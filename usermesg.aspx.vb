Imports System.Data
Imports System.Data.SqlClient
Partial Class usermesg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")
    Dim cmd1, cmd2 As New SqlCommand
    Dim cnt As Char = "0"
    Dim dr As SqlDataReader
    Dim str1, str2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label13.Text = Session("Userid").ToString
        If IsPostBack = False Then
            DropDownList3.Visible = False
            GridView2.Visible = False
        End If
        Try
            con.Open()
            Dim cmd As SqlCommand
            Dim vle As Char = "1"
            Dim usid As String
            usid = Session("Userid").ToString
            cmd = New SqlCommand("SELECT COUNT(*) from msgs where (uid='" + usid + "') and (rde=1) and (sndr='admin')", con)
            dr = cmd.ExecuteReader
            If dr.Read Then

                Label4.Text = dr(0).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()

        End Try
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        DropDownList1.Visible = True
        DropDownList3.Visible = False
        GridView1.Visible = True
        GridView2.Visible = False
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        DropDownList3.Visible = True
        DropDownList1.Visible = False
        GridView2.Visible = True
        GridView1.Visible = False
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Label10.Text = Label13.Text
        Label6.Text = GridView1.SelectedRow.Cells(3).Text
        Label12.Text = GridView1.SelectedRow.Cells(2).Text

        Try
            Dim cmd55 As SqlCommand
            con.Open()
            cmd55 = New SqlCommand("select msges from msgs where msgid=(select sanmsg from msgs where (msgid='" + Label12.Text + "'))", con)
            Dim dr As SqlDataReader
            dr = cmd55.ExecuteReader
            If dr.Read Then
                Label15.Text = dr(0).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged
        Label10.Text = Label13.Text
        Label6.Text = GridView2.SelectedRow.Cells(3).Text
        Label12.Text = GridView2.SelectedRow.Cells(2).Text

        Try
            Dim cmd55 As SqlCommand
            con.Open()
            cmd55 = New SqlCommand("select msges from msgs where msgid=(select sanmsg from msgs where (msgid='" + Label12.Text + "'))", con)
            Dim dr As SqlDataReader
            dr = cmd55.ExecuteReader
            If dr.Read Then
                Label15.Text = dr(0).ToString
                'Else
                '  Label15.Visible = False
                '  Label6.Visible = False
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dr1 As SqlDataReader
        Dim n As Integer
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(cast(msl as int)) from msgs", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
                n = n + 1
                str1 = n.ToString
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
                Dim adtyp, red As String
                adtyp = "user"
                red = "1"
                cmd3 = New SqlCommand("insert into msgs(uid,msges,sndr,det,tme,rde,msgid,msl,sanmsg) values(@uid,@msges,@sndr,@det,@tme,@rde,@msgid,@msl,@sanmsg)", con)
                cmd3.Parameters.AddWithValue("@uid", Label10.Text.Trim())
                cmd3.Parameters.AddWithValue("@msges", TextBox1.Text.Trim())
                cmd3.Parameters.AddWithValue("@sndr", adtyp)
                cmd3.Parameters.AddWithValue("@det", DateTime.Now.ToString("dd-MM-yyyy"))
                cmd3.Parameters.AddWithValue("@tme", DateTime.Now.ToString("hh:mm tt"))
                cmd3.Parameters.AddWithValue("@rde", red)
                cmd3.Parameters.AddWithValue("@msgid", str2)
                cmd3.Parameters.AddWithValue("@msl", str1)
                cmd3.Parameters.AddWithValue("@sanmsg", Label12.Text.Trim())
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
                TextBox1.Text = ""
                TextBox1.Focus()
            End Try

            Try
                con.Open()
                Dim cmd5 As SqlCommand
                Dim red1 As String = "0"
                cmd5 = New SqlCommand("update msgs set rde='" + red1 + "' where (msgid='" + Label12.Text.Trim + "')", con)
                cmd5.ExecuteNonQuery()
            Catch ex As Exception
            Finally
                con.Close()
            End Try
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        Else
            MsgBox("Login first")
        End If
    End Sub
End Class
