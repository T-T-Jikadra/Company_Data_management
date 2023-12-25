Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class company_login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub companyloginbtn_Click(sender As Object, e As System.EventArgs) Handles companyloginbtn.Click
        Dim cmd As New SqlCommand("select count(*) from tblcompany where email_id = @cemail and password = @cpwd", con)

        cmd.Parameters.Add("@cemail", SqlDbType.VarChar, 50).Value = txtloginuname.Text
        cmd.Parameters.Add("@cpwd", SqlDbType.VarChar, 50).Value = txtloginpwd.Text

        con.Open()
        Dim cnt As Integer
        cnt = cmd.ExecuteScalar
        con.Close()
        If cnt = 1 Then
            Session("com_email") = txtloginuname.Text
            Response.Redirect("company_home.aspx")
            clear()
        Else
            MsgBox("User Doesnt exist ..")
        End If

    End Sub

    Sub clear()
        txtloginuname.Text = ""
        txtloginpwd.Text = ""
    End Sub

End Class
