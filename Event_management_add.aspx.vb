Imports System.Data
Imports System.Data.SqlClient
Partial Class Event_management_add
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
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from evntmng", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = Val(n)
                str2 = "KLPTRU/EVNT/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        Dim anvr, anvrrt, rcpt, rcptrt, mrg, mrgrt, clt, cltrt, brt, brtrt As String
        If RadioButton3.Checked = True Then
            brt = "Y"
            brtrt = TextBox19.Text.Trim
        Else
            brt = "N"
            brtrt = "0"
        End If
        If RadioButton7.Checked = True Then
            anvr = "Y"
            anvrrt = TextBox21.Text.Trim
        Else
            anvr = "N"
            anvrrt = "0"
        End If
        If RadioButton9.Checked = True Then
            rcpt = "Y"
            rcptrt = TextBox22.Text.Trim
        Else
            rcpt = "N"
            rcptrt = "0"
        End If
        If RadioButton5.Checked = True Then
            mrg = "Y"
            mrgrt = TextBox20.Text.Trim
        Else
            mrg = "N"
            mrgrt = "0"
        End If
        If RadioButton17.Checked = True Then
            clt = "Y"
            cltrt = TextBox23.Text.Trim
        Else
            clt = "N"
            cltrt = "0"
        End If
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("insert into evntmng(mid,mtname,addr,brt,aniverc,recept,mrge,cult,sl,pno,mail,memno,brate,anvrate,receprate,mrrate,cltrate) values(@mid,@mtname,@addr,@brt,@aniverc,@recept,@mrge,@cult,@sl,@pno,@mail,@memno,@brate,@anvrate,@receprate,@mrrate,@cltrate)", con)
            cmd.Parameters.AddWithValue("@mid", str2)
            cmd.Parameters.AddWithValue("@mtname", TextBox1.Text.Trim)
            cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim)
            cmd.Parameters.AddWithValue("@brt", brt)
            cmd.Parameters.AddWithValue("@aniverc", anvr)
            cmd.Parameters.AddWithValue("@recept", rcpt)
            cmd.Parameters.AddWithValue("@mrge", mrg)
            cmd.Parameters.AddWithValue("@cult", clt)
            cmd.Parameters.AddWithValue("@sl", str1)
            cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim)
            cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim)
            cmd.Parameters.AddWithValue("@memno", TextBox18.Text.Trim)
            cmd.Parameters.AddWithValue("@brate", brtrt)
            cmd.Parameters.AddWithValue("@anvrate", anvrrt)
            cmd.Parameters.AddWithValue("@receprate", rcptrt)
            cmd.Parameters.AddWithValue("@mrrate", mrgrt)
            cmd.Parameters.AddWithValue("@cltrate", cltrt)
            cmd.ExecuteReader()
            MsgBox("Inserted")
        Catch ex As Exception
        Finally
            con.Close()
            TextBox1.Text = ""
            TextBox5.Text = ""
            TextBox3.Text = ""
            TextBox2.Text = ""
            TextBox18.Text = ""
            TextBox19.Text = ""
            TextBox21.Text = ""
            TextBox22.Text = ""
            TextBox20.Text = ""
            TextBox23.Text = ""
            RadioButton3.Checked = False
            RadioButton4.Checked = False
            RadioButton7.Checked = False
            RadioButton8.Checked = False
            RadioButton9.Checked = False
            RadioButton10.Checked = False
            RadioButton5.Checked = False
            RadioButton6.Checked = False
            RadioButton17.Checked = False
            RadioButton18.Checked = False
        End Try
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Dim anvr, anvrrt, rcpt, rcptrt, mrg, mrgrt, clt, cltrt, brt, brtrt As String
        If RadioButton3.Checked = True Then
            brt = "Y"
            brtrt = TextBox19.Text.Trim
        Else
            brt = "N"
            brtrt = "0"
        End If
        If RadioButton7.Checked = True Then
            anvr = "Y"
            anvrrt = TextBox21.Text.Trim
        Else
            anvr = "N"
            anvrrt = "0"
        End If
        If RadioButton9.Checked = True Then
            rcpt = "Y"
            rcptrt = TextBox22.Text.Trim
        Else
            rcpt = "N"
            rcptrt = "0"
        End If
        If RadioButton5.Checked = True Then
            mrg = "Y"
            mrgrt = TextBox20.Text.Trim
        Else
            mrg = "N"
            mrgrt = "0"
        End If
        If RadioButton17.Checked = True Then
            clt = "Y"
            cltrt = TextBox23.Text.Trim
        Else
            clt = "N"
            cltrt = "0"
        End If
        If Session("insupd") = "upd" Then
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim mid As String
                mid = DropDownList2.SelectedValue.Trim()
                cmd = New SqlCommand("update evntmng set   mtname =@mtname, addr =@addr, brt =@brt, aniverc =@aniverc, recept =@recept, mrge =@mrge, cult =@cult, pno =@pno, mail =@mail, memno =@memno, brate =@brate, anvrate =@anvrate, receprate =@receprate, mrrate =@mrrate, cltrate =@cltrate where mid='" + mid + "'", con)
                cmd.Parameters.AddWithValue("@mtname", TextBox1.Text.Trim)
                cmd.Parameters.AddWithValue("@addr", TextBox5.Text.Trim)
                cmd.Parameters.AddWithValue("@brt", brt)
                cmd.Parameters.AddWithValue("@aniverc", anvr)
                cmd.Parameters.AddWithValue("@recept", rcpt)
                cmd.Parameters.AddWithValue("@mrge", mrg)
                cmd.Parameters.AddWithValue("@cult", clt)
                cmd.Parameters.AddWithValue("@pno", TextBox3.Text.Trim)
                cmd.Parameters.AddWithValue("@mail", TextBox2.Text.Trim)
                cmd.Parameters.AddWithValue("@memno", TextBox18.Text.Trim)
                cmd.Parameters.AddWithValue("@brate", brtrt)
                cmd.Parameters.AddWithValue("@anvrate", anvrrt)
                cmd.Parameters.AddWithValue("@receprate", rcptrt)
                cmd.Parameters.AddWithValue("@mrrate", mrgrt)
                cmd.Parameters.AddWithValue("@cltrate", cltrt)
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
        idhold = DropDownList2.SelectedValue.ToString
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from evntmng where mid='" + idhold + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                TextBox1.Text = dr(1).ToString
                TextBox18.Text = dr(11).ToString
                TextBox2.Text = dr(10).ToString
                TextBox5.Text = dr(2).ToString
                TextBox3.Text = dr(9).ToString
                Dim chkk As String = "Y"
                Dim chkkn As String = "N"
                If dr(3).ToString = chkk Then
                    RadioButton3.Checked = True
                    RadioButton4.Checked = False
                ElseIf dr(3).ToString = chkkn Then
                    RadioButton4.Checked = True
                    RadioButton3.Checked = False
                End If
                TextBox19.Text = dr(12).ToString

                If dr(6).ToString = chkk Then
                    RadioButton5.Checked = True
                    RadioButton6.Checked = False

                Else
                    RadioButton6.Checked = True
                    RadioButton5.Checked = False
                End If
                TextBox20.Text = dr(15).ToString

                If dr(4).ToString = chkk Then
                    RadioButton7.Checked = True
                    RadioButton8.Checked = False
                Else
                    RadioButton8.Checked = True
                    RadioButton7.Checked = False
                End If
                TextBox21.Text = dr(13).ToString

                If dr(5).ToString = chkk Then
                    RadioButton9.Checked = True
                    RadioButton10.Checked = False
                Else
                    RadioButton10.Checked = True
                    RadioButton9.Checked = False
                End If
                TextBox22.Text = dr(14).ToString

                If dr(7).ToString = chkk Then
                    RadioButton17.Checked = True
                    RadioButton18.Checked = False
                Else
                    RadioButton18.Checked = True
                    RadioButton17.Checked = False
                End If
                TextBox23.Text = dr(16).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try
    End Sub
End Class
