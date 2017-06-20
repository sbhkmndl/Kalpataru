Imports System.Data
Imports System.Data.SqlClient
Partial Class frgetpss
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            If RadioButton1.Checked = True Then
                cmd = New SqlCommand("select * from aadmin where (uid='" + TextBox1.Text.Trim() + "') and (uname='" + TextBox2.Text.Trim() + "') and (umail='" + TextBox3.Text.Trim() + "')", con)
            ElseIf RadioButton2.Checked = True Then
                cmd = New SqlCommand("select * from auser where (uid='" + TextBox1.Text.Trim() + "') and (uname='" + TextBox2.Text.Trim() + "') and (umail='" + TextBox3.Text.Trim() + "')", con)
            End If
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                MultiView1.Visible = True
                MultiView1.ActiveViewIndex = 0
                Label4.Text = dr(11).ToString
                Session("psec") = dr(12).ToString
                Session("Usertype") = dr(3).ToString
                Session("uidhold") = TextBox1.Text.Trim()
                Label3.Text = TextBox2.Text.Trim()
                Label2.Text = TextBox2.Text.Trim()

            Else
                Label6.Visible = True
                Label6.Text = "User Not Found"
                TextBox1.Text = ""
                TextBox2.Text = ""
                TextBox3.Text = ""
                TextBox1.Focus()
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim txbchk As String
        txbchk = TextBox5.Text.Trim()
        If String.Compare(Session("psec").ToString.ToLower, txbchk.ToLower) = 0 Then
            MultiView1.Visible = True
            MultiView1.ActiveViewIndex = 1
        Else
            Label5.Visible = True
            Label5.Text = "Security Answer does not match"
            TextBox5.Text = ""
            TextBox5.Focus()
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            If RadioButton1.Checked = True Then
                cmd = New SqlCommand("update aadmin set upass='" + TextBox6.Text.Trim() + "' where (uid='" + Session("uidhold").ToString + "')", con)
                Session("Usertype") = "admin"
            ElseIf RadioButton2.Checked = True Then
                cmd = New SqlCommand("update auser set upass='" + TextBox6.Text.Trim() + "' where (uid='" + Session("uidhold").ToString + "')", con)
                Session("Usertype") = "user"
            End If
            cmd.ExecuteReader()
            Session("Userid") = Session("uidhold")
            Session("UsrName") = TextBox2.Text
            Response.Redirect("Home.aspx")
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub
End Class
