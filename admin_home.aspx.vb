Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class admin_home
    Inherits System.Web.UI.Page

    Dim connectionString As String = ConfigurationManager.ConnectionStrings("con").ToString
    Dim cmd As New SqlCommand
    Dim con As New SqlConnection(connectionString)

    'load
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con
            con.ConnectionString = connectionString
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
        If IsPostBack = False Then
            display()
        End If
    End Sub

    'display
    Sub display()
        Dim cmd As New SqlCommand("select * from tblcompany", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "company")
        GridView2.DataSource = ds.Tables("company")
        Me.DataBind()
    End Sub
    
    'search industry wise
    Protected Sub search_Click(sender As Object, e As System.EventArgs) Handles search.Click
        dis_search()
    End Sub

    'sort desc
    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        display_desc()
    End Sub

    Sub dis_search()
        Dim searchstr As String = ddsearch.Text
        Dim cmd As New SqlCommand("select * from tblcompany where industry = '" & searchstr & "' ", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "company")
        'GridView2.DataSource = ds.Tables("company")
        Me.DataBind()
    End Sub

    Sub display_desc()
        Dim cmd As New SqlCommand("select * from tblcompany order by id desc", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        da.Fill(ds, "company")
        GridView2.DataSource = ds.Tables("company")
        Me.DataBind()
    End Sub

    Protected Sub GridView2_RowCancelingEdit(sender As Object, e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView2.RowCancelingEdit
        GridView2.EditIndex = -1
        display()
    End Sub

    Protected Sub GridView2_RowDeleting(sender As Object, e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Try
            Dim vid As String = GridView2.DataKeys(e.RowIndex).Value
            cmd.CommandText = "delete from tblcompany where id = '" & vid & "' "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Record Deleted Successfully .."
            display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub



    Protected Sub GridView2_RowEditing(sender As Object, e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView2.RowEditing
        GridView2.EditIndex = e.NewEditIndex
        display()
    End Sub

    Protected Sub GridView2_RowUpdating(sender As Object, e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView2.RowUpdating
        Label1.Text = "Edit Your Data .."
        Try
            Dim tname, tadd, tindustry, tcity, tpincode, tmobile, temail, tuser, tpwd As TextBox
            Dim vid As String = GridView2.DataKeys(e.RowIndex).Value

            tname = GridView2.Rows(e.RowIndex).Cells(2).Controls(0)
            tadd = GridView2.Rows(e.RowIndex).Cells(3).Controls(0)
            tindustry = GridView2.Rows(e.RowIndex).Cells(4).Controls(0)
            tcity = GridView2.Rows(e.RowIndex).Cells(5).Controls(0)
            tpincode = GridView2.Rows(e.RowIndex).Cells(6).Controls(0)
            tmobile = GridView2.Rows(e.RowIndex).Cells(7).Controls(0)
            temail = GridView2.Rows(e.RowIndex).Cells(8).Controls(0)
            tuser = GridView2.Rows(e.RowIndex).Cells(9).Controls(0)
            tpwd = GridView2.Rows(e.RowIndex).Cells(10).Controls(0)

            cmd.CommandText = "update tblcompany set company_name = '" & tname.Text & "', company_address = '" & tadd.Text & "', industry = '" & tindustry.Text & "', city = '" & tcity.Text & "', pincode = '" & tpincode.Text & "', mobile_no = '" & tmobile.Text & "', email_id = '" & temail.Text & "', user_name = '" & tuser.Text & "', password =  '" & tpwd.Text & "' where id = '" & vid & "' "
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Label1.Text = "Record Updated Successfully.."
            GridView2.EditIndex = -1
            display()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class

