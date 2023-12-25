Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Partial Class reg
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ConnectionString)

    Protected Sub btnreg_Click(sender As Object, e As System.EventArgs) Handles btnreg.Click

        If Page.IsValid Then
            Try
                Dim cmd As New SqlCommand("insert into tblcompany values (@cname, @cadd, @cindustry, @ccity, @cpin, @cmobile, @cemail, @cusername, @cpassword)", con)

                cmd.Parameters.Add("@cname", SqlDbType.VarChar, 50).Value = txtcompanyname.Text
                cmd.Parameters.Add("@cadd", SqlDbType.VarChar, 50).Value = txtcompanyaddress.Text
                cmd.Parameters.Add("@cindustry", SqlDbType.VarChar, 50).Value = comboinsdustry.Text

                cmd.Parameters.Add("@ccity", SqlDbType.VarChar, 50).Value = combocity.Text
                cmd.Parameters.Add("@cpin", SqlDbType.VarChar, 50).Value = txtpincode.Text
                cmd.Parameters.Add("@cmobile", SqlDbType.VarChar, 50).Value = txtmobile.Text

                cmd.Parameters.Add("@cemail", SqlDbType.VarChar, 50).Value = txtemail.Text
                cmd.Parameters.Add("@cusername", SqlDbType.VarChar, 50).Value = txtuname.Text
                cmd.Parameters.Add("@cpassword", SqlDbType.VarChar, 50).Value = txtpassword.Text

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()

                MsgBox("You have Registered Successfully ..", MsgBoxStyle.OkCancel, "Result")
                Response.Redirect("company_login.aspx")

            Catch ex As Exception
                errlbl.Text = ex.Message

            Finally
                If con.State = ConnectionState.Open Then
                    con.Close()
                End If

            End Try
        End If
    End Sub

    Protected Sub btnreset_Click(sender As Object, e As System.EventArgs) Handles btnreset.Click
        txtcompanyname.Text = ""
        txtcompanyaddress.Text = ""
        txtpincode.Text = ""
        txtemail.Text = ""
        combocity.SelectedItem.Text = ""
        txtmobile.Text = ""
        txtemail.Text = ""
        txtpassword.Text = ""
        txtpassword.Text = ""
    End Sub
End Class
