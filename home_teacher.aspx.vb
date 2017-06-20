Imports System.Data
Imports System.Data.SqlClient
Partial Class home_teacher
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim str1, str2 As String
    Dim dr1, dr2 As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Button4.Visible = False
        If Session("Userid") = "" Then
            Response.Redirect("Home.aspx")
        Else
            MultiView1.ActiveViewIndex = 0
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim uide As String
                uide = Session("Userid").ToString
                If Session("Usertype") = "user" Then
                    cmd = New SqlCommand("select * from auser where uid= '" + uide + "'", con)
                Else
                    cmd = New SqlCommand("select * from aadmin where uid= '" + uide + "'", con)
                End If
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Image2.ImageUrl = dr(5).ToString
                    Label15.Text = dr(0).ToString
                    Label16.Text = dr(1).ToString
                    Label17.Text = dr(3).ToString
                    Dim utp As String
                    utp = dr(3).ToString
                    If utp = "admin" Then
                        HyperLink3.Visible = True
                        HyperLink4.Visible = False
                    Else
                        HyperLink4.Visible = True
                        HyperLink3.Visible = False
                    End If
                End If
            Catch ex As Exception
            Finally
                con.Close()

            End Try

            Dim drr As SqlDataReader
            Dim dropsel1, dropsel2, dr1ind, dr2ind As String
            dropsel1 = DropDownList1.SelectedValue.ToString.Trim
            dropsel2 = DropDownList2.SelectedValue.ToString.Trim
            dr1ind = DropDownList1.SelectedIndex
            dr2ind = DropDownList2.SelectedIndex

            If dr1ind <> 0 And dr2ind <> 0 Then
                Try
                    con.Open()
                    Dim cmd As SqlCommand
                    If dropsel1 = "math" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (math='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "eng" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (eng='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "beng" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (beng='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "hst" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (hst='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "psc" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (psc='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "lsc" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (lsc='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "grg" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (grg='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "cems" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (cems='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "al" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (al='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    ElseIf dropsel1 = "scnc" Then
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (scnc='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    Else
                        cmd = New SqlCommand("select tid,tname,tgend,rate from hometec where (arts='Y') and ((cast(frmcls as int))<= '" + dropsel2 + "') and ((cast(tocls as int)) >= '" + dropsel2 + "')", con)

                    End If

                    drr = cmd.ExecuteReader
                    If drr.HasRows Then
                        GridView1.DataSource = drr
                        GridView1.DataBind()
                    End If

                    Button4.Visible = True
                Catch ex As Exception
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub




    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        MultiView2.ActiveViewIndex = 0
        Dim row As GridViewRow = GridView1.SelectedRow
        Label23.Text = row.Cells(2).Text
        Label24.Text = row.Cells(1).Text
        Label25.Text = row.Cells(3).Text
        Label26.Text = row.Cells(4).Text
        Label27.Text = DropDownList2.SelectedValue.ToString
        Label28.Text = DropDownList1.SelectedValue.ToString
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        MultiView2.ActiveViewIndex = 1
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim rte As String = ""
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from hometec where tid='" + Label24.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("hmtid") = dr(0).ToString
                Session("hmtname") = dr(2).ToString
                Session("hmtpic") = dr(4).ToString
                Session("hmtmob") = dr(9).ToString
                Session("hmtgend") = dr(3).ToString
                Session("mail") = dr(19).ToString
                rte = dr(8).ToString
            End If

        Catch ex As Exception
        Finally
            con.Close()

        End Try

        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from costmrbill", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = Val(n).ToString
                str2 = "KLPTRU/BILL/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        Try
            con.Open()
            Dim cmdd As SqlCommand
            Dim perposee As String
            perposee = "Home Teacher for class " & Label27.Text & " and subject is " & Label28.Text
            Dim dropsel11 As String
            dropsel11 = DropDownList1.SelectedValue.ToString.Trim
            If dropsel11 = "arts" Or dropsel11 = "scnc" Then
                rte = (Val(rte) * 3).ToString
            ElseIf dropsel11 = "al" Then
                rte = (Val(rte) * 8).ToString
            Else
                rte = Val(rte).ToString
            End If
            cmdd = New SqlCommand("insert into costmrbill(uid,bllno,sl,dte,tme,prps,amountt) values(@uid,@bllno,@sl,@dte,@tme,@prps,@amountt)", con)
            cmdd.Parameters.AddWithValue("@uid", Session("Userid").ToString)
            cmdd.Parameters.AddWithValue("@bllno", str2)
            cmdd.Parameters.AddWithValue("@sl", str1)
            cmdd.Parameters.AddWithValue("@dte", DateTime.Now.ToString("dd-MM-yyyy"))
            cmdd.Parameters.AddWithValue("@tme", DateTime.Now.ToString("hh:mm tt"))
            cmdd.Parameters.AddWithValue("@prps", perposee)
            cmdd.Parameters.AddWithValue("@amountt", rte)
            cmdd.ExecuteNonQuery()
            Session("blno") = str2
            Session("ordtyp") = "hometech"
            Session("orddat") = DateTime.Now.ToString("dd-MM-yyyy")
            Session("ordtme") = DateTime.Now.ToString("hh:mm tt")
            Session("Price") = rte
            Session("hmtsbj") = Label28.Text
            Session("hmtclss") = Label27.Text
            Session("hmtstdnm") = TextBox6.Text
            Session("mhttime") = DropDownList3.SelectedValue.ToString
            Response.Redirect("pament_gtway.aspx")
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim dr As SqlDataReader
        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(msl as int)) from msgs", con)
            dr = cmd1.ExecuteReader
            If dr.Read Then
                n = Val(dr(0).ToString)
                n = n + 1
                str1 = Val(n)
                str2 = "KLPTRU/MSG/ID/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        If Session("Usertype") = "user" Then
            Try
                con.Close()
                con.Open()
                Dim cmd3 As SqlCommand
                Dim adtyp, red, red1 As String
                adtyp = "user"
                red = "1"
                red1 = "0"
                Dim uide As String
                uide = Session("Userid").ToString
                cmd3 = New SqlCommand("insert into msgs(uid,msges,sndr,det,tme,rde,msgid,msl) values(@uid,@msges,@sndr,@det,@tme,@rde,@msgid,@msl)", con)
                cmd3.Parameters.AddWithValue("@uid", uide)
                cmd3.Parameters.AddWithValue("@msges", TextBox5.Text.Trim())
                cmd3.Parameters.AddWithValue("@sndr", adtyp)
                cmd3.Parameters.AddWithValue("@det", DateTime.Now.ToString("dd-MM-yyyy"))
                cmd3.Parameters.AddWithValue("@tme", DateTime.Now.ToString("hh:mm tt"))
                cmd3.Parameters.AddWithValue("@rde", red)
                cmd3.Parameters.AddWithValue("@msgid", str2)
                cmd3.Parameters.AddWithValue("@msl", str1)
                cmd3.ExecuteReader()
                Dim dr4 As SqlDataReader
                dr4 = cmd3.ExecuteReader
                If dr4.Read = True Then
                    MsgBox("Send")
                Else
                    MsgBox("Faild")
                End If
            Catch ex As Exception
            Finally
                con.Close()
                TextBox5.Text = ""
                TextBox5.Focus()
            End Try
        Else
            MsgBox("Login first")
        End If

    End Sub
End Class
