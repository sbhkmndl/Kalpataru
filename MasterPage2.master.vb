Imports System.Data
Imports System.Data.SqlClient
Partial Class MasterPage2
    Inherits System.Web.UI.MasterPage
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") <> "" And Session("Usertype") = "admin" Then
            Image1.Visible = True
            Label1.Visible = True
            Label2.Visible = True
            Label3.Visible = True
            LinkButton1.Visible = True
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim uide As String
                uide = Session("Userid").ToString
                cmd = New SqlCommand("select * from aadmin where uid= '" + uide + "'", con)
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Image1.ImageUrl = dr(5).ToString
                    Label3.Text = dr(0).ToString
                    Label2.Text = dr(1).ToString
                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try
        Else
            Response.Redirect("Home.aspx")
            Image1.Visible = False
            Label1.Visible = False
            Label2.Visible = False
            Label3.Visible = False
            LinkButton1.Visible = False
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("Userid") = ""
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Image1.Visible = False
        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        LinkButton1.Visible = False
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select uid from auser where uid='" + usrsrchbox.Text.Trim + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.HasRows Then
                Session("usrsrchID") = usrsrchbox.Text.Trim
                Response.Redirect("search_user.aspx")
            Else
                usrsrchbox.Text = ""
                Label4.Visible = True
                usrsrchbox.Focus()
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try

        
    End Sub
End Class

