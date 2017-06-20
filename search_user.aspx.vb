Imports System.Data
Imports System.Data.SqlClient
Partial Class search_user
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.Open()
            Dim cmd As SqlCommand
            Dim uihld As String
            uihld = Session("usrsrchID")
            cmd = New SqlCommand("select * from auser where uid='" + uihld + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                uidd.Text = dr(0).ToString
                unme.Text = dr(1).ToString
                uagee.Text = dr(2).ToString
                ugndrr.Text = dr(6).ToString
                uadrr.Text = dr(4).ToString
                umobb.Text = dr(7).ToString
                umll.Text = dr(8).ToString
                uprofimg.ImageUrl = dr(5).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try

    End Sub
End Class
