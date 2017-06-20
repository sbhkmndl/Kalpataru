Imports System.Data
Imports System.Data.SqlClient
Partial Class userprof
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        unme.Visible = False
        uagee.Visible = False
        uadr.Visible = False
        uphone.Visible = False
        uemail.Visible = False
        RadioButton3.Visible = False
        RadioButton4.Visible = False
        Try
            con.Open()
            Dim cmd As SqlCommand
            Dim uihld As String
            uihld = Session("Userid")
            cmd = New SqlCommand("select * from auser where uid='" + uihld + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Label4.Text = dr(0).ToString
                TextBox1.Text = dr(1).ToString
                TextBox2.Text = dr(2).ToString
                Label5.Text = dr(3).ToString
                TextBox3.Text = dr(4).ToString
                TextBox4.Text = dr(7).ToString
                TextBox5.Text = dr(8).ToString
                Image2.ImageUrl = dr(5).ToString
                If dr(6).ToString = "male" Then
                    RadioButton1.Checked = True
                Else
                    RadioButton2.Checked = True
                End If
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox1.Visible = False
        TextBox2.Visible = False
        TextBox3.Visible = False
        TextBox4.Visible = False
        TextBox5.Visible = False
        RadioButton1.Visible = False
        RadioButton2.Visible = False
        ImageButton2.Visible = True
        Label6.Visible = True
        FileUpload1.Visible = True

        unme.Visible = True
        uagee.Visible = True
        uadr.Visible = True
        uphone.Visible = True
        uemail.Visible = True
        RadioButton3.Visible = True
        RadioButton4.Visible = True

        unme.Text = TextBox1.Text.Trim()
        uagee.Text = TextBox2.Text.Trim()
        uadr.Text = TextBox3.Text.Trim()
        uphone.Text = TextBox4.Text.Trim()
        uemail.Text = TextBox5.Text.Trim()
        If RadioButton1.Checked = True Then
            RadioButton3.Checked = True
        ElseIf RadioButton2.Checked = True Then
            RadioButton4.Checked = True
        End If
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim genhold As String = ""
        If RadioButton1.Checked = True Then
            genhold = "male"
        ElseIf RadioButton2.Checked = True Then
            genhold = "female"
        End If

        Dim fileName As String = String.Empty
        Dim filePath As String = String.Empty
        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/images/profile_images/user/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/images/profile_images/user/" & fileName
        End If
        Try
            con.Open()
            Dim cmd As SqlCommand
            If fileName <> "" Then
                cmd = New SqlCommand("update auser set uname =@uname, uage =@uage, uaddr =@uaddr, upic =@upic, ugen =@ugen, umob =@umob, umail =@umail where uid='" + Label4.Text + "'", con)
            Else
                cmd = New SqlCommand("update auser set uname =@uname, uage =@uage, uaddr =@uaddr, ugen =@ugen, umob =@umob, umail =@umail where uid='" + Label4.Text + "'", con)
            End If

            cmd.Parameters.AddWithValue("@uname", unme.Text.Trim)
            cmd.Parameters.AddWithValue("@uage", uagee.Text.Trim)
            cmd.Parameters.AddWithValue("@uaddr", uadr.Text.Trim)
            If fileName <> "" Then
                cmd.Parameters.AddWithValue("@upic", fileName)
            End If
            cmd.Parameters.AddWithValue("@ugen", genhold)
            cmd.Parameters.AddWithValue("@umob", uphone.Text.Trim)
            cmd.Parameters.AddWithValue("@umail", uemail.Text.Trim)
            cmd.ExecuteReader()

            TextBox1.Visible = True
            TextBox2.Visible = True
            TextBox3.Visible = True
            TextBox4.Visible = True
            TextBox5.Visible = True
            RadioButton1.Visible = True
            RadioButton2.Visible = True
            ImageButton2.Visible = False
            Label6.Visible = False
            FileUpload1.Visible = False

            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)

        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub
End Class
