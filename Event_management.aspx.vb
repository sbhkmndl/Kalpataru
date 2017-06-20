Imports System.Data
Imports System.Data.SqlClient
Partial Class Event_management
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim str1, str2 As String
    Dim dr1, dr2 As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") = "" Then
            Response.Redirect("Home.aspx")
        Else
            Button4.Visible = False

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
                    Image1.ImageUrl = dr(5).ToString
                    Label1.Text = dr(0).ToString
                    Label2.Text = dr(1).ToString
                    Label3.Text = dr(3).ToString
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

            Dim dropsel, rt, dr1ind, dr2ind As String
            dropsel = DropDownList1.SelectedValue
            rt = DropDownList2.SelectedValue
            dr1ind = DropDownList1.SelectedIndex
            dr2ind = DropDownList2.SelectedIndex
            If dr1ind <> 0 And dr2ind <> 0 Then

                Try
                    con.Open()
                    Dim cmd As SqlCommand
                    Dim dr As SqlDataReader
                    If dropsel = "brt" Then
                        cmd = New SqlCommand("select mid,mtname,pno,memno,brate from evntmng where (brt='Y') and (brate<='" + rt + "')", con)
                        dr = cmd.ExecuteReader
                        If dr.HasRows Then
                            GridView1.DataSource = dr
                            GridView1.DataBind()
                        End If

                    ElseIf dropsel = "aniver" Then
                        cmd = New SqlCommand("select mid,mtname,pno,memno,anvrate from evntmng where (aniverc='Y') and (anvrate<='" + rt + "')", con)
                        dr = cmd.ExecuteReader
                        If dr.HasRows Then
                            GridView1.DataSource = dr
                            GridView1.DataBind()
                        End If

                    ElseIf dropsel = "recept" Then
                        cmd = New SqlCommand("select mid,mtname,pno,memno,receprate from evntmng where (recept='Y') and (receprate<='" + rt + "')", con)
                        dr = cmd.ExecuteReader
                        If dr.HasRows Then
                            GridView1.DataSource = dr
                            GridView1.DataBind()
                        End If

                    ElseIf dropsel = "mrge" Then
                        cmd = New SqlCommand("select mid,mtname,pno,memno,mrrate from evntmng where (mrge='Y') and (mrrate<='" + rt + "')", con)
                        dr = cmd.ExecuteReader
                        If dr.HasRows Then
                            GridView1.DataSource = dr
                            GridView1.DataBind()
                        End If

                    ElseIf dropsel = "cult" Then
                        cmd = New SqlCommand("select mid,mtname,pno,memno,cltrate from evntmng where (cult='Y') and (cltrate<='" + rt + "')", con)
                        dr = cmd.ExecuteReader
                        If dr.HasRows Then
                            GridView1.DataSource = dr
                            GridView1.DataBind()
                        End If

                    End If
                    Button4.Visible = True
                Catch ex As Exception
                Finally
                    con.Close()
                End Try
            End If
        End If
    End Sub

 

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        Calendar1.Visible = True
    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        TextBox7.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        MultiView2.ActiveViewIndex = 0
        Dim row As GridViewRow = GridView1.SelectedRow
        Label25.Text = row.Cells(2).Text
        Label24.Text = row.Cells(1).Text
        Label26.Text = row.Cells(5).Text
        Label27.Text = row.Cells(3).Text
        Label28.Text = row.Cells(4).Text

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        MultiView2.ActiveViewIndex = 1
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from evntmng where mid='" + Label24.Text + "'", con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                Session("evid") = dr(0).ToString
                Session("evtname") = dr(1).ToString
                Session("evcntno") = dr(9).ToString
                Session("mail") = dr(10).ToString
                Session("evntmemno") = dr(11).ToString
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

        Finally
            con.Close()
        End Try
        Try
            con.Open()
            Dim cmdd As SqlCommand
            Dim perposee As String
            perposee = "Event Management- " & DropDownList1.SelectedValue.ToString
            cmdd = New SqlCommand("insert into costmrbill(uid,bllno,sl,dte,tme,prps,amountt) values(@uid,@bllno,@sl,@dte,@tme,@prps,@amountt)", con)
            cmdd.Parameters.AddWithValue("@uid", Session("Userid").ToString)
            cmdd.Parameters.AddWithValue("@bllno", str2)
            cmdd.Parameters.AddWithValue("@sl", str1)
            cmdd.Parameters.AddWithValue("@dte", DateTime.Now.ToString("dd-MM-yyyy"))
            cmdd.Parameters.AddWithValue("@tme", DateTime.Now.ToString("hh:mm tt"))
            cmdd.Parameters.AddWithValue("@prps", perposee)
            cmdd.Parameters.AddWithValue("@amountt", Label26.Text.Trim)
            cmdd.ExecuteNonQuery()
            Session("blno") = str2
            Session("ordtyp") = "eventmanage"
            Session("orddat") = DateTime.Now.ToString("dd-MM-yyyy")
            Session("ordtme") = DateTime.Now.ToString("hh:mm tt")
            Session("Price") = Label26.Text
            Session("evntdate") = TextBox7.Text
            Session("Price") = Label26.Text
            Session("eventtime") = DropDownList3.SelectedValue.ToString
            Session("evntocetn") = DropDownList1.Text
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
