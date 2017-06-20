Imports System.Data
Imports System.Data.SqlClient
Partial Class Ambulance_add
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
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from amblnc", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = Val(n).ToString
                str2 = "KLPTRU/AMB/NO/" & n.ToString
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
                cmd = New SqlCommand("insert into amblnc(abid,sl,dname,addr,adpic,anum,dmob,area,gend,mail) values(@abid,@sl,@dname,@addr,@adpic,@anum,@dmob,@area,@gend,@mail)", con)
                cmd.Parameters.AddWithValue("@abid", str2)
                cmd.Parameters.AddWithValue("@sl", str1)
                cmd.Parameters.AddWithValue("@dname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim())
                cmd.Parameters.AddWithValue("@adpic", upurl.Text.Trim())
                cmd.Parameters.AddWithValue("@anum", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@dmob", TextBox3.Text.Trim)
                cmd.Parameters.AddWithValue("@area", DropDownList1.SelectedValue.Trim())
                cmd.Parameters.AddWithValue("@gend", genhold)
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
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
                DropDownList1.ClearSelection()
                RadioButton1.Checked = False
                RadioButton2.Checked = False
                filePath = Nothing
                fileName = Nothing
                upurl.Text = ""
            End Try
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/images/profile_images/ambulance/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/images/profile_images/ambulance/" & fileName
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
                ambid = DropDownList2.Text.Trim()
                If upurl.Text <> "" Then
                    cmd = New SqlCommand("update amblnc set dname=@dname,addr=@addr,adpic=@adpic,anum=@anum,dmob=@dmob,area=@area,gend=@gend,mail=@mail where abid='" + ambid + "'", con)
                Else
                    cmd = New SqlCommand("update amblnc set dname=@dname,addr=@addr,anum=@anum,dmob=@dmob,area=@area,gend=@gend,mail=@mail where abid='" + ambid + "'", con)
                End If
                cmd.Parameters.AddWithValue("@dname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim())
                If upurl.Text <> "" Then
                    cmd.Parameters.AddWithValue("@adpic", upurl.Text.Trim())
                End If
                cmd.Parameters.AddWithValue("@anum", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@dmob", TextBox3.Text.Trim)
                cmd.Parameters.AddWithValue("@area", DropDownList1.SelectedValue.Trim())
                cmd.Parameters.AddWithValue("@gend", genhold)
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
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
            cmd = New SqlCommand("select * from amblnc where abid='" + idhold + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(2).ToString
                If dr(8).ToString = "male" Then
                    RadioButton1.Checked = True
                Else
                    RadioButton2.Checked = True
                End If
                TextBox2.Text = dr(9).ToString
                TextBox5.Text = dr(3).ToString
                TextBox3.Text = dr(6).ToString
                TextBox17.Text = dr(5).ToString
                DropDownList1.SelectedValue = dr(7).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try
    End Sub
End Class
