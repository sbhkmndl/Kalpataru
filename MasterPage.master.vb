Imports System.Data
Imports System.Data.SqlClient
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage



    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        If LinkButton1.Text = "Login" Then
            Response.Redirect("login.aspx")

        Else
            Session("Userid") = ""
            Session.Clear()
            Session.RemoveAll()
            Session.Abandon()
            Response.Redirect("Home.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Panel2.Visible = False
        If Session("Userid") <> "" Then
            LinkButton1.Text = "Logout"
            Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
            Dim dr As SqlDataReader
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim vle As Char = "1"
                Dim usid As String
                usid = Session("Userid").ToString
                If Session("Usertype") = "user" Then
                    cmd = New SqlCommand("SELECT COUNT(*) from msgs where (uid='" + usid + "') and (rde=1) and (sndr='admin')", con)
                ElseIf Session("Usertype") = "admin" Then
                    cmd = New SqlCommand("SELECT COUNT(*) from msgs where (rde=1) and (sndr='user')", con)
                End If
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Dim chk As String
                    chk = dr(0).ToString
                    If Val(chk) > 0 Then
                        Label1.Text = dr(0).ToString
                        Panel2.Visible = True
                    Else
                        Panel2.Visible = False
                    End If

                End If
            Catch ex As Exception
            Finally
                con.Close()

            End Try
        Else
            LinkButton1.Text = "Login"
            
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        If Session("Usertype") = "user" Then
            Response.Redirect("usermesg.aspx")
        ElseIf Session("Usertype") = "admin" Then
            Response.Redirect("admnmsg.aspx")
        End If
    End Sub
End Class

