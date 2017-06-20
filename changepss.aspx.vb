Imports System.Data
Imports System.Data.SqlClient
Partial Class changepss
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
            Try
                con.Open()
            Dim cmd As SqlCommand
            Dim idhold As String
            idhold = Session("Userid").ToString
            If Session("Usertype") = "user" Then
                cmd = New SqlCommand("update auser set upass='" + TextBox11.Text.Trim() + "' where (uid='" + idhold + "') and (upass='" + TextBox10.Text + "')", con)
            Else
                cmd = New SqlCommand("update aadmin set upass='" + TextBox11.Text.Trim() + "' where (uid='" + idhold + "') and (upass='" + TextBox10.Text + "')", con)
            End If
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            If dr.Read Then
                Label20.Visible = True
                Label20.Text = "Password does not match"
                TextBox10.Text = ""
                TextBox11.Text = ""
                TextBox12.Text = ""
                TextBox10.Focus()
            Else

                MsgBox("Password Change Sucessfull")
                Response.Redirect("Home.aspx")
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") = "" Then
            Response.Redirect("Home.aspx")
        End If
    End Sub
End Class
