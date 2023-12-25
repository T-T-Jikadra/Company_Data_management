
Partial Class company_home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Label2.Text = "Welcome : " & Session("com_email").ToString() & "!"

    End Sub
End Class
