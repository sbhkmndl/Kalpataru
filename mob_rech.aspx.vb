Imports System.Data
Imports System.Data.SqlClient
Partial Class mob_rech
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim str1, str2 As String
    Dim dr1, dr2 As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from costmrbill", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                str1 = Val(n)
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
            perposee = "Mobile Recharge"
            cmdd = New SqlCommand("insert into costmrbill(uid,bllno,sl,dte,tme,prps,amountt) values(@uid,@bllno,@sl,@dte,@tme,@prps,'" + TextBox11.Text + "')", con)
            cmdd.Parameters.AddWithValue("@uid", Session("Userid").ToString)
            cmdd.Parameters.AddWithValue("@bllno", str2)
            cmdd.Parameters.AddWithValue("@sl", str1)
            cmdd.Parameters.AddWithValue("@dte", DateTime.Now.ToString("dd-MM-yyyy"))
            cmdd.Parameters.AddWithValue("@tme", DateTime.Now.ToString("hh:mm tt"))
            cmdd.Parameters.AddWithValue("@prps", perposee)
            Session("blno") = str2
            Session("orddat") = DateTime.Now.ToString("dd-MM-yyyy")
            Session("ordtme") = DateTime.Now.ToString("hh:mm tt")
            Session("Price") = TextBox11.Text
            Session("ordtyp") = "mobrech"
            Session("rchmobno") = TextBox10.Text
            Response.Redirect("pament_gtway.aspx")
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Userid") = "" Then
            Response.Redirect("Home.aspx")
        Else
            MultiView1.ActiveViewIndex = 0
            Try
                con.Open()
                Dim cmd As SqlCommand
                Dim uide As String
                uide = Session("Userid").ToString
                cmd = New SqlCommand("select * from auser where uid= '" + uide + "'", con)
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Image2.ImageUrl = dr(5).ToString
                    Label19.Text = dr(0).ToString
                    Label17.Text = dr(1).ToString
                    Label18.Text = dr(3).ToString

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
        End If
    End Sub


End Class
