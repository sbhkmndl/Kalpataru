Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.Mail
Imports System.Net

Partial Class pament_gtway
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim str1, str2 As String
    Dim dr1, dr2 As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") = "" Then
            Response.Redirect("Home.aspx")
        Else
            Dim bln As String = ""
            bln = Session("blno").ToString()
            Label11.Text = Session("Price").ToString
            Label4.Text = bln
            Label9.Text = Session("Userid").ToString
            Label10.Text = Session("UsrName").ToString
            If DropDownList1.Text = "Pay Hand to Hand" Then
                Label12.Visible = False
                Label8.Visible = False
                Label5.Visible = False
                Label7.Visible = False
                Label6.Visible = False
                TextBox1.Visible = False
                TextBox2.Visible = False
                TextBox3.Visible = False
                TextBox4.Visible = False
                DropDownList2.Visible = False
            ElseIf DropDownList1.Text = "Internet Banking" Then
                Label8.Text = "User ID"
                Label5.Text = "Password"
                Label7.Visible = False
                Label6.Visible = False
                TextBox3.Visible = False
                TextBox4.Visible = False
                DropDownList2.Visible = True
                Label12.Visible = True
                Label8.Visible = True
                Label5.Visible = True
                TextBox1.Visible = True
                TextBox2.Visible = True
            Else
                Label12.Visible = True
                Label8.Visible = True
                Label5.Visible = True
                Label7.Visible = True
                Label6.Visible = True
                TextBox1.Visible = True
                TextBox2.Visible = True
                TextBox3.Visible = True
                TextBox4.Visible = True
                DropDownList2.Visible = True
            End If
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim rand1 As New Random
        Dim p As Integer
        Dim pass As String
        For p = 1 To 100
            pass = rand1.Next(3000)
            Session("OTP") = pass.ToString
        Next

        If Session("ordtyp") <> "mobrech" And DropDownList1.SelectedValue.ToString = "Pay Hand to Hand" Then
            Try
                con.Open()
                Dim cmd As SqlCommand

                cmd = New SqlCommand("update costmrbill set paidyn=@paidyn, padthrgh=@padthrgh where bllno='" + Session("blno").ToString + "'", con)
                cmd.Parameters.AddWithValue("@paidyn", "N")
                cmd.Parameters.AddWithValue("@padthrgh", "Hand to Hand")
                cmd.ExecuteNonQuery()
                Session("Paidysno") = "N"
                Session("payMode") = "Hand to Hand"
            Catch ex As Exception
            Finally
                con.Close()
            End Try

            Dim actvty As String = ""
            Dim uide As String
            uide = Session("Userid").ToString

            If Session("ordtyp") = "ambulance" Then
                actvty = uide & " orders an ambulation of " & Session("abid").ToString & " in " & Session("ambarea").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "eventmanage" Then
                actvty = uide & " book an Event Management Team of " & Session("evid").ToString & " for " & Session("evntocetn").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "gooddelivery" Then
                actvty = uide & " hire a transport of " & Session("gdsid").ToString & " in " & Session("gdsarea").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "hometech" Then
                actvty = uide & " take a home teacher of " & Session("hmtid").ToString & " for " & Session("hmtsbj").ToString & " of class " & Session("hmtclss").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "housekeep" Then
                actvty = uide & " hire a House Keeper of " & Session("hksid").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "technisian" Then
                actvty = uide & " hire a technician of " & Session("tecnid").ToString & " for " & Session("tecnperps").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "tutorialtech" Then
                actvty = uide & " take a tutorial teacher of " & Session("tutortid").ToString & " for " & Session("tutorsbj").ToString & " of class " & Session("tutorclss").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            End If


            Dim n As Integer
            Dim str33 As String = ""
            Try
                con.Open()
                cmd1 = New SqlCommand("select MAX(cast(sl as int)) from activityss", con)
                dr1 = cmd1.ExecuteReader
                If dr1.Read Then
                    n = dr1(0).ToString
                    n = n + 1
                    str33 = Val(n)
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                con.Close()
            End Try

            Try
                con.Open()
                Dim cmdd As SqlCommand
                cmdd = New SqlCommand("insert into activityss(uid,billno,activtyy,sl) values(@uid,@billno,@activtyy,@sl)", con)
                cmdd.Parameters.AddWithValue("@uid", uide)
                cmdd.Parameters.AddWithValue("@billno", Label4.Text)
                cmdd.Parameters.AddWithValue("@activtyy", actvty)
                cmdd.Parameters.AddWithValue("@sl", str33)
                Dim dr As SqlDataReader
                dr = cmdd.ExecuteReader
                If dr.Read Then

                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try

            'mail to the orgnigetion 

            Dim fromadress As String = "soubhikmandal@yahoo.com"
            Dim frompassword As String = "kalpataru789"
            Dim mailsubject As String = "You Got an Order"
            Dim mailbody As String = actvty
            Dim toadress As String = Session("mail").ToString
            Dim smtp As New SmtpClient("smtp.mail.yahoo.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromadress, frompassword)
            Dim mail As New MailMessage(fromadress, toadress, mailsubject, mailbody)
            Try
                smtp.Send(mail)
            Catch ex As Exception
                MsgBox(ex.Message.ToString)
            End Try

            'mail end


            If Session("ordtyp") = "ambulance" Then
                Response.Redirect("amb_bill.aspx")

            ElseIf Session("ordtyp") = "eventmanage" Then
                Response.Redirect("evntmngbill.aspx")

            ElseIf Session("ordtyp") = "gooddelivery" Then
                Response.Redirect("gdsdelvbill.aspx")

            ElseIf Session("ordtyp") = "hometech" Then
                Response.Redirect("hmtechbill.aspx")


            ElseIf Session("ordtyp") = "housekeep" Then
                Response.Redirect("huskeepbill.aspx")


            ElseIf Session("ordtyp") = "technisian" Then
                Response.Redirect("technbill.aspx")


            ElseIf Session("ordtyp") = "tutorialtech" Then
                Response.Redirect("tutrltchbill.aspx")

            End If

        ElseIf Session("ordtyp") = "mobrech" And DropDownList1.SelectedValue.ToString = "Pay Hand to Hand" Then
            MsgBox("This Service is not available", MsgBoxStyle.Critical)
        Else
            Dim mailhold As String = ""
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim uidaa As String
                uidaa = Session("Userid").ToString
                If Session("Usertype") = "user" Then
                    cmd = New SqlCommand("select umail from auser where uid='" + uidaa + "' ", con)
                Else
                    cmd = New SqlCommand("select umail from aadmin where uid='" + uidaa + "' ", con)
                End If
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    mailhold = dr(0).ToString
                    Session("otpmail") = dr(0).ToString
                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try

            Dim fromadress As String = "soubhikmandal@yahoo.com"
            Dim frompassword As String = "kalpataru789"
            Dim mailsubject As String = "OTP"
            Dim mailbody As String = "Your OTP is" & Session("OTP").ToString
            Dim toadress As String = Session("otpmail").ToString
            Dim smtp As New SmtpClient("smtp.mail.yahoo.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromadress, frompassword)
            Dim mail As New MailMessage(fromadress, toadress, mailsubject, mailbody)
            Try
                smtp.Send(mail)
                Panel1.Visible = True
                Session("payMode") = DropDownList1.SelectedValue.ToString
            Catch ex As Exception
                MsgBox(ex.Message.ToString)
            End Try

        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim var As String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        Dim sb As New StringBuilder()
        Dim rand As New Random()
        For i As Integer = 1 To 5
            Dim idx As Integer = rand.Next(0, var.Length)
            Dim randomChar As Char = var(idx)
            sb.Append(randomChar)
        Next i
        Dim randomString As String = sb.ToString()

        If TextBox5.Text.Trim = Session("OTP").ToString Then
            Try
                con.Open()
                Dim cmdd As SqlCommand
                Dim ptrgh As String = ""
                ptrgh = Session("payMode").ToString
                cmdd = New SqlCommand("update costmrbill set paidyn='Y', padthrgh='" + ptrgh + "', trnjcid='" + randomString + "' where bllno='" + Label4.Text + "'", con)
                cmdd.ExecuteReader()
            Catch ex As Exception
            Finally
                con.Close()
            End Try

            Session("Paidysno") = "Y"

            Dim actvty As String = ""
            Dim uide As String
            uide = Session("Userid").ToString

            If Session("ordtyp") = "ambulance" Then
                actvty = uide & " orders an ambulation of " & Session("abid").ToString & " in " & Session("ambarea").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "eventmanage" Then
                actvty = uide & " book an Event Management Team of " & Session("evid").ToString & " for " & Session("evntocetn").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "gooddelivery" Then
                actvty = uide & " hire a transport of " & Session("gdsid").ToString & " in " & Session("gdsarea").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "hometech" Then
                actvty = uide & " take a home teacher of " & Session("hmtid").ToString & " for " & Session("hmtsbj").ToString & " of class " & Session("hmtclss").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "housekeep" Then
                actvty = uide & " hire a House Keeper of " & Session("hksid").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "technisian" Then
                actvty = uide & " hire a technician of " & Session("tecnid").ToString & " for " & Session("tecnperps").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString


            ElseIf Session("ordtyp") = "tutorialtech" Then
                actvty = uide & " take a tutorial teacher of " & Session("tutortid").ToString & " for " & Session("tutorsbj").ToString & " of class " & Session("tutorclss").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            ElseIf Session("ordtyp") = "mobrech" Then
                actvty = uide & " mobile recharge of " & Session("Price").ToString & " on " & Session("rchmobno").ToString & " at " & Session("orddat").ToString & " " & Session("ordtme").ToString

            End If

            Dim n As Integer
            Dim str33 As String = ""
            Try
                con.Open()
                cmd1 = New SqlCommand("select MAX(cast(sl as int)) from activityss", con)
                dr1 = cmd1.ExecuteReader
                If dr1.Read Then
                    n = dr1(0).ToString
                    n = n + 1
                    str33 = Val(n)
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            Finally
                con.Close()
            End Try

            Try
                con.Open()
                Dim cmdd As SqlCommand
                cmdd = New SqlCommand("insert into activityss(uid,billno,activtyy,sl) values(@uid,@billno,@activtyy,@sl)", con)
                cmdd.Parameters.AddWithValue("@uid", uide)
                cmdd.Parameters.AddWithValue("@billno", Label4.Text)
                cmdd.Parameters.AddWithValue("@activtyy", actvty)
                cmdd.Parameters.AddWithValue("@sl", str33)
                Dim dr As SqlDataReader
                dr = cmdd.ExecuteReader
                If dr.Read Then

                End If
            Catch ex As Exception
            Finally
                con.Close()
            End Try

            'mail to the orgnigetion 

            Dim fromadress As String = "soubhikmandal@yahoo.com"
            Dim frompassword As String = "kalpataru789"
            Dim mailsubject As String = "You Got an Order"
            Dim mailbody As String = actvty
            Dim toadress As String = Session("mail").ToString
            Dim smtp As New SmtpClient("smtp.mail.yahoo.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromadress, frompassword)
            Dim mail As New MailMessage(fromadress, toadress, mailsubject, mailbody)
            Try
                smtp.Send(mail)
            Catch ex As Exception
                MsgBox(ex.Message.ToString)
            End Try

            'mail end

            If Session("ordtyp") = "ambulance" Then
                Response.Redirect("amb_bill.aspx")
            ElseIf Session("ordtyp") = "ambulance" Then
                Response.Redirect("")


            ElseIf Session("ordtyp") = "eventmanage" Then
                Response.Redirect("evntmngbill.aspx")

            ElseIf Session("ordtyp") = "gooddelivery" Then
                Response.Redirect("gdsdelvbill.aspx")

            ElseIf Session("ordtyp") = "hometech" Then
                Response.Redirect("hmtechbill.aspx")


            ElseIf Session("ordtyp") = "housekeep" Then
                Response.Redirect("huskeepbill.aspx")


            ElseIf Session("ordtyp") = "technisian" Then
                Response.Redirect("technbill.aspx")


            ElseIf Session("ordtyp") = "tutorialtech" Then
                Response.Redirect("tutrltchbill.aspx")


            ElseIf Session("ordtyp") = "mobrech" Then
                Try
                    con.Open()
                    Dim cmdd As SqlCommand
                    cmdd = New SqlCommand("insert into mobrechh(uid,mobnoo,rchprs) values(@uid,@mobnoo,@rchprs)", con)
                    cmdd.Parameters.AddWithValue("@uid", Session("Userid").ToString)
                    cmdd.Parameters.AddWithValue("@mobnoo", Session("rchmobno").ToString)
                    cmdd.Parameters.AddWithValue("@rchprs", Session("Price").ToString)
                    Dim drrr As SqlDataReader = cmdd.ExecuteReader
                    If drrr.Read Then
                        MsgBox("Recharge Success", MsgBoxStyle.Information)
                        Response.Redirect("mob_rech.aspx")
                    End If
                Catch ex As Exception
                Finally
                    con.Close()
                End Try
            End If
        Else
            MsgBox("OTP does Not Match")
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Dim fromadress As String = "soubhikmandal@yahoo.com"
        Dim frompassword As String = "kalpataru789"
        Dim mailsubject As String = "OTP"
        Dim mailbody As String = "Your OTP is" & Session("OTP").ToString
        Dim toadress As String = Session("otpmail").ToString
        Dim smtp As New SmtpClient("smtp.mail.yahoo.com", 587)
        smtp.EnableSsl = True
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential(fromadress, frompassword)
        Dim mail As New MailMessage(fromadress, toadress, mailsubject, mailbody)
        Try
            smtp.Send(mail)
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            Dim billno As String
            billno = Session("blno").ToString
            cmd = New SqlCommand("delete from costmrbill where bllno='" + billno + "'", con)
            cmd.ExecuteReader()
            Response.Redirect("Home.aspx")

        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub
End Class
