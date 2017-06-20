Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class newuserreg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim str1, str2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from auser", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                str1 = Val(n)
                str2 = "KLPTRU/USR/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        Dim var As String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        Dim sb As New StringBuilder()
        Dim rand As New Random()
        For i As Integer = 1 To 5
            Dim idx As Integer = rand.Next(0, var.Length)
            Dim randomChar As Char = var(idx)
            sb.Append(randomChar)
        Next i

        Dim randomString = sb.ToString()
        TextBox9.Text = randomString

        Label15.Text = str2.ToString.Trim()
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("Userid") = ""
        Dim utp, ugend As String
        utp = "user"
        ugend = ""
        If RadioButton1.Checked = True Then
            ugend = "male"
        ElseIf RadioButton2.Checked = True Then
            ugend = "female"
        End If
        'If Label12.Text = TextBox8.Text Then
        con.Open()
        'Try

        cmd2 = New SqlCommand("insert into auser(uid,uname,uage,utype,uaddr,upic,ugen,umob,umail,upass,sl,ssecurity,psecurity) values(@uid,@uname,@uage,@utype,@uaddr,@upic,@ugen,@umob,@umail,@upass,@sl,@ssecurity,@psecurity) ", con)
        cmd2.Parameters.AddWithValue("@uid", str2)
        cmd2.Parameters.AddWithValue("@uname", TextBox1.Text.Trim())
        cmd2.Parameters.AddWithValue("@uage", TextBox4.Text.Trim())
        cmd2.Parameters.AddWithValue("@utype", utp)
        cmd2.Parameters.AddWithValue("@uaddr", TextBox5.Text.Trim())
        cmd2.Parameters.AddWithValue("@upic", Label14.Text.Trim())
        cmd2.Parameters.AddWithValue("@ugen", ugend)
        cmd2.Parameters.AddWithValue("@umob", TextBox6.Text.Trim())
        cmd2.Parameters.AddWithValue("@umail", TextBox2.Text.Trim())
        cmd2.Parameters.AddWithValue("@upass", TextBox3.Text.Trim())
        cmd2.Parameters.AddWithValue("@sl", str1)
        cmd2.Parameters.AddWithValue("@ssecurity", DropDownList1.SelectedValue.Trim())
        cmd2.Parameters.AddWithValue("@psecurity", TextBox7.Text.Trim())

        Dim dr As SqlDataReader
        dr = cmd2.ExecuteReader
        If dr.Read Then

            Session("Userid") = str2
            Session("Usertype") = utp
            Session("UsrName") = TextBox1.Text.Trim()

        Else
            Response.Redirect("login.aspx")

        End If
        'Catch ex As Exception
        '    MsgBox(ex.Message)
        'Finally
        con.Close()
        cmd2.Dispose()
        fileName = Nothing
        filePath = Nothing
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        DropDownList1.ClearSelection()
        'End Try
        'Else
        'Label13.Visible = True
        'Label13.Text = "Please Enter Security Code Correctly"
        'End If

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Dim var As String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        Dim sb As New StringBuilder()
        Dim rand As New Random()
        For i As Integer = 1 To 5
            Dim idx As Integer = rand.Next(0, var.Length)
            Dim randomChar As Char = var(idx)
            sb.Append(randomChar)
        Next i

        Dim randomString = sb.ToString()
        'TextBox9.Text = randomString
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/images/profile_images/user/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/images/profile_images/user/" & fileName
            Label14.Text = fileName

        End If
    End Sub

End Class
