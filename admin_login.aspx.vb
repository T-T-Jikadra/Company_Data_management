Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data

Partial Class login
    Inherits System.Web.UI.Page
    'Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\5th Sem Sutex\ASP-505\Practical\ASP_Syllabus\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("con").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con

        Catch ex As Exception
            'Label1.Text = ex.Message
        End Try
        If IsPostBack = False Then
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Try
            Dim id As String = txtadminemail.Text
            Dim pwd As String = txtadminpwd.Text
            If (id = "admin@gmail.com" AndAlso pwd = "admin") Then
                MsgBox("Admin Login Success ..")
                Response.Redirect("~/admin_home.aspx")
            Else
                MsgBox("Login Failed. Please check your credentials.")
            End If
        Catch ex As Exception
        End Try
    End Sub
End Class
