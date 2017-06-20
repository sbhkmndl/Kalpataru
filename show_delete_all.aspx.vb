Imports System.Data
Imports System.Data.SqlClient
Partial Class show_delete_all
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Dim row As GridViewRow = GridView1.SelectedRow
        Label4.Text = row.Cells(1).Text
        Label5.Text = row.Cells(2).Text
        Label6.Text = DropDownList1.Text
        Try
            con.Open()
            Dim cmd As New SqlCommand
            Dim dr As SqlDataReader

            If DropDownList1.SelectedValue = "ambul" Then
                cmd = New SqlCommand("SELECT adpic FROM amblnc where (abid='" + row.Cells(1).Text + "')", con)


            ElseIf DropDownList1.SelectedValue = "evntm" Then
                Image2.Visible = False

            ElseIf DropDownList1.SelectedValue = "gdsdel" Then
                cmd = New SqlCommand("SELECT dmpic FROM gddeliver where (gdid='" + row.Cells(1).Text + "')", con)


            ElseIf DropDownList1.SelectedValue = "hmtech" Then
                cmd = New SqlCommand("SELECT tpic FROM hometec where (tid='" + row.Cells(1).Text + "')", con)


            ElseIf DropDownList1.SelectedValue = "hosekep" Then
                cmd = New SqlCommand("SELECT hpic FROM hskeepr where (hkid='" + row.Cells(1).Text + "')", con)


            ElseIf DropDownList1.SelectedValue = "techn" Then
                cmd = New SqlCommand("SELECT tcpic FROM techn where (tcid='" + row.Cells(1).Text + "')", con)


            ElseIf DropDownList1.SelectedValue = "tutortech" Then
                cmd = New SqlCommand("SELECT tpic FROM tutorial where (tid='" + row.Cells(1).Text + "')", con)


            End If

            If DropDownList1.SelectedValue <> "evntm" Then
                dr = cmd.ExecuteReader
                If dr.Read Then
                    Image2.ImageUrl = dr(0).ToString
                End If
            End If

        Catch ex As Exception
        Finally
            con.Close()
        End Try
        Panel3.Visible = True
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Button1.Visible = False
        Button2.Visible = True
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand
            Dim dr As SqlDataReader

            If DropDownList1.SelectedValue = "ambul" Then
                cmd = New SqlCommand("SELECT abid, dname, addr FROM amblnc where (abid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "evntm" Then
                cmd = New SqlCommand("SELECT mid, mtname, addr FROM evntmng where (mid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "gdsdel" Then
                cmd = New SqlCommand("SELECT gdid, dmname, addr FROM gddeliver where (gdid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "hmtech" Then
                cmd = New SqlCommand("SELECT tid, tname, taddr FROM hometec where (tid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "hosekep" Then
                cmd = New SqlCommand("SELECT hkid, hname, addr FROM hskeepr where (hkid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "techn" Then
                cmd = New SqlCommand("SELECT tcid, tcname, addr FROM techn where (tcid='" + TextBox1.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "tutortech" Then
                cmd = New SqlCommand("SELECT tid, tname, taddr FROM tutorial where (tid='" + TextBox1.Text.Trim() + "')", con)

            End If

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                GridView1.DataSource = dr
                GridView1.DataBind()
            End If

        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand
            Dim dr As SqlDataReader

            If DropDownList1.SelectedValue = "ambul" Then
                cmd = New SqlCommand("SELECT abid, dname, addr FROM amblnc ", con)

            ElseIf DropDownList1.SelectedValue = "evntm" Then
                cmd = New SqlCommand("SELECT mid, mtname, addr FROM evntmng ", con)

            ElseIf DropDownList1.SelectedValue = "gdsdel" Then
                cmd = New SqlCommand("SELECT gdid, dmname, addr FROM gddeliver ", con)

            ElseIf DropDownList1.SelectedValue = "hmtech" Then
                cmd = New SqlCommand("SELECT tid, tname, taddr FROM hometec ", con)

            ElseIf DropDownList1.SelectedValue = "hosekep" Then
                cmd = New SqlCommand("SELECT hkid, hname, addr FROM hskeepr ", con)

            ElseIf DropDownList1.SelectedValue = "techn" Then
                cmd = New SqlCommand("SELECT tcid, tcname, addr FROM techn ", con)

            ElseIf DropDownList1.SelectedValue = "tutortech" Then
                cmd = New SqlCommand("SELECT tid, tname, taddr FROM tutorial ", con)

            End If

            dr = cmd.ExecuteReader
            If dr.HasRows Then
                GridView1.DataSource = dr
                GridView1.DataBind()
            End If

        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd As New SqlCommand

            If DropDownList1.SelectedValue = "ambul" Then
                cmd = New SqlCommand("DELETE FROM amblnc where (abid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "evntm" Then
                cmd = New SqlCommand("DELETE FROM evntmng where (mid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "gdsdel" Then
                cmd = New SqlCommand("DELETE FROM gddeliver where (gdid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "hmtech" Then
                cmd = New SqlCommand("DELETE FROM hometec where (tid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "hosekep" Then
                cmd = New SqlCommand("DELETE FROM hskeepr where (hkid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "techn" Then
                cmd = New SqlCommand("DELETE FROM techn where (tcid='" + Label4.Text.Trim() + "')", con)

            ElseIf DropDownList1.SelectedValue = "tutortech" Then
                cmd = New SqlCommand("DELETE FROM tutorial where (tid='" + Label4.Text.Trim() + "')", con)

            End If

            cmd.ExecuteNonQuery()
            MsgBox("Deleted", MsgBoxStyle.Information)
            Button1.Visible = True
            Button2.Visible = False
            Panel3.Visible = False
        Catch ex As Exception
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Panel3.Visible = False
        End If
        DropDownList1.SelectedValue = Session("shdlcatg").ToString
    End Sub
End Class
