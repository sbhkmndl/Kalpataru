Imports System.Data
Imports System.Data.SqlClient
Partial Class tutorial_teacher_add
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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/images/profile_images/tutorialtecher/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/images/profile_images/tutorialtecher/" & fileName
            upurl.Text = fileName.ToString.Trim()
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from tutorial", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = n.ToString
                str2 = "KLPTRU/TUTECH/NO/" & n.ToString
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
        Dim mth, engl, bng, hstr, psy, lifs, grge, cms, alll, scnc, artse As String
        If RadioButton3.Checked = True Then
            mth = "Y"
        Else
            mth = "N"
        End If
        If RadioButton5.Checked = True Then
            engl = "Y"
        Else
            engl = "N"
        End If
        If RadioButton7.Checked = True Then
            bng = "Y"
        Else
            bng = "N"
        End If
        If RadioButton9.Checked = True Then
            hstr = "Y"
        Else
            hstr = "N"
        End If
        If RadioButton11.Checked = True Then
            psy = "Y"
        Else
            psy = "N"
        End If
        If RadioButton13.Checked = True Then
            lifs = "Y"
        Else
            lifs = "N"
        End If
        If RadioButton17.Checked = True Then
            grge = "Y"
        Else
            grge = "N"
        End If
        If RadioButton15.Checked = True Then
            cms = "Y"
        Else
            cms = "N"
        End If
        If RadioButton19.Checked = True Then
            mth = "Y"
            engl = "Y"
            bng = "Y"
            hstr = "Y"
            psy = "Y"
            lifs = "Y"
            grge = "Y"
            cms = "Y"
            alll = "Y"
        Else
            alll = "N"
        End If
        If psy = "Y" And lifs = "Y" And cms = "Y" Then
            scnc = "Y"
        Else
            scnc = "N"
        End If
        If bng = "Y" And hstr = "Y" And grge = "Y" Then
            artse = "Y"
        Else
            artse = "N"
        End If
        If genhold = "" Then
            Label29.Text = "Select Your gender"
        Else
            Label29.Text = ""
            Try
                con.Open()
                Dim cmd As SqlCommand
                cmd = New SqlCommand("insert into tutorial (tid, sl, tname, tgend, tpic, taddr, rloc, tme, frmcls, tocls, rte, pno, math, eng, beng, hst, psc, grg, lsc, cems, al, mail, scnc, arts) values(@tid,@sl,@tname,@tgend,@tpic,@taddr,@rloc,@tme,@frmcls,@tocls,@rte,@pno,@math,@eng,@beng,@hst,@psc,@grg,@lsc,@cems,@al,@mail,@scnc,@arts)", con)
                cmd.Parameters.AddWithValue("@tid", str2)
                cmd.Parameters.AddWithValue("@sl", str1)
                cmd.Parameters.AddWithValue("@tname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@tgend", genhold)
                cmd.Parameters.AddWithValue("@tpic", upurl.Text)
                cmd.Parameters.AddWithValue("@taddr", TextBox5.Text.Trim())
                cmd.Parameters.AddWithValue("@rloc", TextBox15.Text.Trim())
                cmd.Parameters.AddWithValue("@tme", TextBox6.Text.Trim())
                cmd.Parameters.AddWithValue("@frmcls", TextBox7.Text.Trim())
                cmd.Parameters.AddWithValue("@tocls", TextBox16.Text.Trim())
                cmd.Parameters.AddWithValue("@rte", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim())
                cmd.Parameters.AddWithValue("@math", mth)
                cmd.Parameters.AddWithValue("@eng", engl)
                cmd.Parameters.AddWithValue("@beng", bng)
                cmd.Parameters.AddWithValue("@hst", hstr)
                cmd.Parameters.AddWithValue("@psc", psy)
                cmd.Parameters.AddWithValue("@grg", grge)
                cmd.Parameters.AddWithValue("@lsc", lifs)
                cmd.Parameters.AddWithValue("@cems", cms)
                cmd.Parameters.AddWithValue("@al", alll)
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
                cmd.Parameters.AddWithValue("@scnc", scnc)
                cmd.Parameters.AddWithValue("@arts", artse)

                cmd.ExecuteReader()
                MsgBox("Inserted")
            Catch ex As Exception
            Finally
                con.Close()
                TextBox1.Text = ""
                RadioButton1.Checked = False
                RadioButton2.Checked = False
                TextBox2.Text = ""
                TextBox5.Text = ""
                filePath = Nothing
                fileName = Nothing
                upurl.Text = ""
                TextBox3.Text = ""
                TextBox17.Text = ""
                TextBox7.Text = ""
                TextBox16.Text = ""
                TextBox15.Text = ""
                TextBox6.Text = ""
                RadioButton3.Checked = False
                RadioButton5.Checked = False
                RadioButton7.Checked = False
                RadioButton9.Checked = False
                RadioButton11.Checked = False
                RadioButton13.Checked = False
                RadioButton17.Checked = False
                RadioButton15.Checked = False
                RadioButton19.Checked = False
                RadioButton4.Checked = False
                RadioButton6.Checked = False
                RadioButton8.Checked = False
                RadioButton10.Checked = False
                RadioButton12.Checked = False
                RadioButton14.Checked = False
                RadioButton18.Checked = False
                RadioButton16.Checked = False
                RadioButton20.Checked = False
            End Try
        End If
    End Sub


    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim genhold As String = ""
        If RadioButton1.Checked = True Then
            genhold = "male"
        ElseIf RadioButton2.Checked = True Then
            genhold = "female"
        End If
        Dim mth, engl, bng, hstr, psy, lifs, grge, cms, alll, scnc, artse As String
        If RadioButton3.Checked = True Then
            mth = "Y"
        Else
            mth = "N"
        End If
        If RadioButton5.Checked = True Then
            engl = "Y"
        Else
            engl = "N"
        End If
        If RadioButton7.Checked = True Then
            bng = "Y"
        Else
            bng = "N"
        End If
        If RadioButton9.Checked = True Then
            hstr = "Y"
        Else
            hstr = "N"
        End If
        If RadioButton11.Checked = True Then
            psy = "Y"
        Else
            psy = "N"
        End If
        If RadioButton13.Checked = True Then
            lifs = "Y"
        Else
            lifs = "N"
        End If
        If RadioButton17.Checked = True Then
            grge = "Y"
        Else
            grge = "N"
        End If
        If RadioButton15.Checked = True Then
            cms = "Y"
        Else
            cms = "N"
        End If
        If RadioButton19.Checked = True Then
            mth = "Y"
            engl = "Y"
            bng = "Y"
            hstr = "Y"
            psy = "Y"
            lifs = "Y"
            grge = "Y"
            cms = "Y"
            alll = "Y"
        Else
            alll = "N"
        End If
        If psy = "Y" And lifs = "Y" And cms = "Y" Then
            scnc = "Y"
        Else
            scnc = "N"
        End If
        If bng = "Y" And hstr = "Y" And grge = "Y" Then
            artse = "Y"
        Else
            artse = "N"
        End If
        If Session("insupd") = "upd" Then
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim ambid As String
                ambid = DropDownList2.SelectedValue.Trim()
                If upurl.Text <> "" Then
                    cmd = New SqlCommand("update tutorial set  tname =@tname, tgend =@tgend, tpic =@tpic, taddr =@taddr, rloc =@rloc, tme =@tme, frmcls =@frmcls, tocls =@tocls, rte =@rte, pno =@pno, math =@math, eng =@eng, beng =@beng, hst =@hst, psc =@psc, lsc =@lsc, grg =@grg, cems =@cems, al =@al, mail =@mail, scnc =@scnc, arts =@arts where tid='" + ambid + "'", con)
                Else
                    cmd = New SqlCommand("update tutorial set  tname =@tname, tgend =@tgend, taddr =@taddr, rloc =@rloc, tme =@tme, frmcls =@frmcls, tocls =@tocls, rte =@rte, pno =@pno, math =@math, eng =@eng, beng =@beng, hst =@hst, psc =@psc, lsc =@lsc, grg =@grg, cems =@cems, al =@al, mail =@mail, scnc =@scnc, arts =@arts where tid='" + ambid + "'", con)
                End If

                cmd.Parameters.AddWithValue("@tname", TextBox1.Text.Trim())
                cmd.Parameters.AddWithValue("@tgend", genhold)
                If upurl.Text <> "" Then
                    cmd.Parameters.AddWithValue("@tpic", upurl)
                End If
                cmd.Parameters.AddWithValue("@taddr", TextBox5.Text.Trim())
                cmd.Parameters.AddWithValue("@rloc", TextBox15.Text.Trim())
                cmd.Parameters.AddWithValue("@tme", TextBox6.Text.Trim())
                cmd.Parameters.AddWithValue("@frmcls", TextBox7.Text.Trim())
                cmd.Parameters.AddWithValue("@tocls", TextBox16.Text.Trim())
                cmd.Parameters.AddWithValue("@rte", TextBox17.Text.Trim())
                cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim())
                cmd.Parameters.AddWithValue("@math", mth)
                cmd.Parameters.AddWithValue("@eng", engl)
                cmd.Parameters.AddWithValue("@beng", bng)
                cmd.Parameters.AddWithValue("@hst", hstr)
                cmd.Parameters.AddWithValue("@psc", psy)
                cmd.Parameters.AddWithValue("@grg", grge)
                cmd.Parameters.AddWithValue("@lsc", lifs)
                cmd.Parameters.AddWithValue("@cems", cms)
                cmd.Parameters.AddWithValue("@al", alll)
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim())
                cmd.Parameters.AddWithValue("@scnc", scnc)
                cmd.Parameters.AddWithValue("@arts", artse)
                cmd.ExecuteReader()
                MsgBox("Updated")
            Catch ex As Exception
            Finally
                con.Close()
            End Try
        End If
    End Sub

    Protected Sub RadioButton19_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButton19.CheckedChanged

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim idhold As String
        idhold = DropDownList2.Text
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from tutorial where tid='" + idhold + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(2).ToString
                If dr(3).ToString = "male" Then
                    RadioButton1.Checked = True
                    RadioButton2.Checked = False
                Else
                    RadioButton2.Checked = True
                    RadioButton1.Checked = False
                End If
                TextBox2.Text = dr(21).ToString
                TextBox5.Text = dr(5).ToString
                TextBox3.Text = dr(11).ToString
                TextBox15.Text = dr(6).ToString
                TextBox6.Text = dr(7).ToString
                TextBox7.Text = dr(8).ToString
                TextBox16.Text = dr(9).ToString
                TextBox17.Text = dr(10).ToString
                If dr(20).ToString = "Y" Then
                    RadioButton19.Checked = True
                    RadioButton20.Checked = False
                Else
                    RadioButton20.Checked = True
                    RadioButton19.Checked = False
                End If
                If dr(12).ToString = "Y" Then
                    RadioButton3.Checked = True
                    RadioButton4.Checked = False
                Else
                    RadioButton4.Checked = True
                    RadioButton3.Checked = False
                End If
                If dr(13).ToString = "Y" Then
                    RadioButton5.Checked = True
                    RadioButton6.Checked = False
                Else
                    RadioButton6.Checked = True
                    RadioButton5.Checked = False
                End If
                If dr(14).ToString = "Y" Then
                    RadioButton7.Checked = True
                    RadioButton8.Checked = False
                Else
                    RadioButton8.Checked = True
                    RadioButton7.Checked = False
                End If
                If dr(15).ToString = "Y" Then
                    RadioButton9.Checked = True
                    RadioButton10.Checked = False
                Else
                    RadioButton10.Checked = True
                    RadioButton9.Checked = False
                End If
                If dr(18).ToString = "Y" Then
                    RadioButton17.Checked = True
                    RadioButton18.Checked = False
                Else
                    RadioButton18.Checked = True
                    RadioButton17.Checked = False
                End If
                If dr(16).ToString = "Y" Then
                    RadioButton11.Checked = True
                    RadioButton12.Checked = False
                Else
                    RadioButton12.Checked = True
                    RadioButton11.Checked = False
                End If
                If dr(17).ToString = "Y" Then
                    RadioButton13.Checked = True
                    RadioButton14.Checked = False
                Else
                    RadioButton14.Checked = True
                    RadioButton13.Checked = False
                End If
                If dr(19).ToString = "Y" Then
                    RadioButton15.Checked = True
                    RadioButton16.Checked = False
                Else
                    RadioButton16.Checked = True
                    RadioButton15.Checked = False
                End If
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try
    End Sub
End Class
