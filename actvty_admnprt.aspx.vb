Imports System.Data
Imports System.Data.SqlClient
Partial Class actvty_admnprt
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim n, c As Integer
        Dim str33 As String = ""
        Try
            con.Open()
            Dim cmd1 As SqlCommand
            Dim dr1 As SqlDataReader
            cmd1 = New SqlCommand("select MAX(cast(sl as int)) from activityss", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = Val(dr1(0).ToString)
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try
        c = n - 10
        str33 = Val(c).ToString

        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select uid,activtyy from activityss where ((cast(sl as int)) > '" + str33 + "')", con)
            Dim dr As SqlDataReader
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

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Try
            con.Open()
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select uid,activtyy from activityss ", con)
            Dim dr As SqlDataReader
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
End Class
