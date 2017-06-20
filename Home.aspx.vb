Imports System.Data
Imports System.Data.SqlClient
Partial Class Default3
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        If Session("Userid") = "" Then
            MultiView1.ActiveViewIndex = 0
        Else
            MultiView1.ActiveViewIndex = 1
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim uide As String
                uide = Session("Userid").ToString
                If Session("Usertype") = "user" Then
                    cmd = New SqlCommand("select * from auser where uid= '" + uide + "'", con)
                Else
                    cmd = New SqlCommand("select * from aadmin where uid= '" + uide + "'", con)
                End If
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Image7.ImageUrl = dr(5).ToString
                    Label12.Text = dr(0).ToString
                    Label13.Text = dr(1).ToString
                    Label14.Text = dr(3).ToString
                    Dim utp As String
                    utp = dr(3).ToString
                    If utp = "admin" Then
                        HyperLink3.Visible = True
                        HyperLink4.Visible = False
                    Else
                        HyperLink4.Visible = True
                        HyperLink3.Visible = False
                    End If
                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try
        End If

    End Sub
   
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from auser where uid='" + TextBox3.Text + "' and upass='" + TextBox4.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("Userid") = TextBox3.Text
                Session("Usertype") = dr(3).ToString
                Session("UsrName") = dr(1).ToString
                If Session("Usertype") = "user" Then
                    Response.Redirect("Home.aspx")
                ElseIf Session("Usertype") = "admin" Then
                    Response.Redirect("admnmsg.aspx")
                End If
            Else
                MsgBox("sorry!!! You Enter wrong UserID or Password", MsgBoxStyle.Critical)
                TextBox3.Text = ""
                TextBox4.Text = ""
                TextBox3.Focus()
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

 
End Class
