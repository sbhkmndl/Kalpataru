Imports System.Data
Imports System.Data.SqlClient
Partial Class order_users
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim uide As String = ""
        uide = Session("Userid").ToString
        Try
            con.Open()
            Dim cmd As SqlCommand
            Dim dt As New DataTable
            cmd = New SqlCommand("select bllno,paidyn,padthrgh,amountt,prps from costmrbill where uid='" + uide + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                GridView1.DataSource = dr
                GridView1.DataBind()
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub
End Class
