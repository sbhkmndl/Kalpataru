Imports System.Data
Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        If RadioButton1.Checked = False And RadioButton2.Checked = False Then
            Label3.Visible = True
        Else
            Try
                con.Open()
                Dim cmd As SqlCommand
                If RadioButton2.Checked = True Then
                    cmd = New SqlCommand("select * from auser where uid='" + TextBox1.Text + "' and upass='" + TextBox2.Text + "'", con)
                Else
                    cmd = New SqlCommand("select * from aadmin where uid='" + TextBox1.Text + "' and upass='" + TextBox2.Text + "'", con)
                End If
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Session("Userid") = TextBox1.Text
                    Session("Usertype") = dr(3).ToString
                    Session("UsrName") = dr(1).ToString
                    If Session("Usertype") = "user" Then
                        Response.Redirect("Home.aspx")
                    ElseIf Session("Usertype") = "admin" Then
                        Response.Redirect("admnmsg.aspx")
                    End If
                Else
                    MsgBox("sorry!!! You Enter wrong UserID or Password", MsgBoxStyle.Critical)
                    TextBox1.Text = ""
                    TextBox2.Text = ""
                    TextBox1.Focus()
                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") <> "" Then
            Response.Redirect("Home.aspx")
        End If
    End Sub
End Class
