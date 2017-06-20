Imports System.Data
Imports System.Data.SqlClient
Partial Class Technition_add
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim str1, str2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("insupd") = "upd" Then
            Label28.Visible = True
            DropDownList2.Visible = True
            ImageButton1.Visible = False
            ImageButton2.Visible = True
            Button1.Visible = True

        ElseIf Session("insupd") = "ins" Then
            Label28.Visible = False
            DropDownList2.Visible = False
            ImageButton1.Visible = True
            ImageButton2.Visible = False
            Button1.Visible = False
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from techn", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = Val(n)
                str2 = "KLPTRU/HSK/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        Dim genhold As String = ""
        If RadioButton1.Checked = True Then
            genhold = "male"
        ElseIf RadioButton2.Checked = True Then
            genhold = "female"
        End If
        If genhold = "" Then
            Label29.Text = "Select Your gender"
        Else
            Label29.Text = ""
            Try
                con.Open()
                Dim cmd As SqlCommand
                cmd = New SqlCommand("insert into techn(tcid,sl,tcname,addr,tcpic,gend,pno,rate,mail,prpse) values(@tcid,@sl,@tcname,@addr,@tcpic,@gend,@pno,@rate,@mail,@prpse)", con)
                cmd.Parameters.AddWithValue("@tcid", str2)
                cmd.Parameters.AddWithValue("@sl", str1)
                cmd.Parameters.AddWithValue("@tcname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim())
                cmd.Parameters.AddWithValue("@tcpic", upurl.Text.Trim())
                cmd.Parameters.AddWithValue("@gend", genhold)
                cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim())
                cmd.Parameters.AddWithValue("@rate", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
                cmd.Parameters.AddWithValue("@prpse", DropDownList3.SelectedValue.ToString)
                cmd.ExecuteReader()
                MsgBox("Inserted")
            Catch ex As Exception
            Finally
                con.Close()
                TextBox1.Text = ""
                TextBox5.Text = ""
                TextBox17.Text = ""
                TextBox3.Text = ""
                TextBox2.Text = ""
                RadioButton1.Checked = False
                RadioButton2.Checked = False
                filePath = Nothing
                fileName = Nothing
                upurl.Text = ""
                DropDownList3.ClearSelection()
            End Try
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/images/profile_images/technician/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/images/profile_images/technician/" & fileName
            upurl.Text = fileName.ToString.Trim()
        End If
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim genhold As String = ""
        If RadioButton1.Checked = True Then
            genhold = "male"
        ElseIf RadioButton2.Checked = True Then
            genhold = "female"
        End If
        If Session("insupd") = "upd" Then
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim ambid As String
                ambid = DropDownList2.SelectedValue.Trim()
                If upurl.Text <> "" Then
                    cmd = New SqlCommand("update techn set  tcname =@tcname, addr =@addr, tcpic =@tcpic, gend =@gend, pno =@pno, rate =@rate, mail =@mail, prpse= @prpse where tcid='" + ambid + "'", con)
                Else
                    cmd = New SqlCommand("update techn set  tcname =@tcname, addr =@addr, gend =@gend, pno =@pno, rate =@rate, mail =@mail, prpse= @prpse where tcid='" + ambid + "'", con)
                End If
                cmd.Parameters.AddWithValue("@tcname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim())
                If upurl.Text <> "" Then
                    cmd.Parameters.AddWithValue("@tcpic", upurl.Text.Trim())
                End If
                cmd.Parameters.AddWithValue("@gend", genhold)
                cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim())
                cmd.Parameters.AddWithValue("@rate", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
                cmd.Parameters.AddWithValue("@prpse", DropDownList3.SelectedValue.ToString)
                cmd.ExecuteReader()
                MsgBox("Updated")
            Catch ex As Exception
            Finally
                con.Close()
            End Try
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim idhold As String
        idhold = DropDownList2.Text
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from techn where tcid='" + idhold + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(2).ToString
                If dr(5).ToString = "male" Then
                    RadioButton1.Checked = True
                    RadioButton2.Checked = False
                Else
                    RadioButton2.Checked = True
                    RadioButton1.Checked = False
                End If
                TextBox2.Text = dr(8).ToString
                TextBox5.Text = dr(3).ToString
                TextBox3.Text = dr(6).ToString
                TextBox17.Text = dr(7).ToString
                DropDownList3.SelectedValue = dr(9).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try
    End Sub
End Class
