Imports QRCoder
Imports System.IO
Imports System.Drawing
Imports System.Data
Imports System.Data.SqlClient
Partial Class technbill
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\users.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'for QR code
        Dim code As String = Session("blno").ToString()
        Dim qrGenerator As New QRCodeGenerator()
        Dim qrCode As QRCodeGenerator.QRCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q)
        Dim imgBarCode As New System.Web.UI.WebControls.Image()
        imgBarCode.Height = 150
        imgBarCode.Width = 150
        Using bitMap As Bitmap = qrCode.GetGraphic(20)
            Using ms As New MemoryStream()
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png)
                Dim byteImage As Byte() = ms.ToArray()
                Image5.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage)
            End Using
        End Using
        'End of QR code

        'Fetching User's Details
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
                Label1.Text = dr(0).ToString
                Label2.Text = dr(1).ToString
                Label3.Text = dr(2).ToString
                Label5.Text = dr(6).ToString
                Label6.Text = dr(4).ToString
                Label7.Text = dr(7).ToString
                Image1.ImageUrl = dr(5).ToString
            End If
        Catch ex As Exception
        Finally
            con.Close()
        End Try
        'End of Fetching User's Details
        Label8.Text = Session("blno").ToString()
        Label9.Text = Session("Price").ToString
        Label10.Text = Session("Paidysno").ToString
        Label11.Text = Session("payMode").ToString
        Label40.Text = Session("tecnperps").ToString

        Label12.Text = Session("tecnid").ToString
        Label13.Text = Session("tecnname").ToString
        Label14.Text = Session("tecnmob").ToString
        Label15.Text = Session("tecngend").ToString
        Label25.Text = Session("orddat").ToString
        Label26.Text = Session("ordtme").ToString
        Image2.ImageUrl = Session("tecnpic").ToString

        Label41.Text = TimeOfDay

    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        ClientScript.RegisterStartupScript([GetType](), "print", "window.print();", True)
    End Sub
End Class
