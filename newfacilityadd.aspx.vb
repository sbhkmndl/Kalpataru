
Partial Class newfacilityadd
    Inherits System.Web.UI.Page

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Session("insupd") = "ins"
        Response.Redirect("Event_management_add.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Session("insupd") = "upd"
        Response.Redirect("Event_management_add.aspx")
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        Session("insupd") = "ins"
        Response.Redirect("Home_teacher_add.aspx")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Session("insupd") = "ins"
        Response.Redirect("tutorial_teacher_add.aspx")
    End Sub

    Protected Sub LinkButton12_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton12.Click
        Session("insupd") = "ins"
        Response.Redirect("HouseKeeperadd.aspx")
    End Sub

    Protected Sub LinkButton10_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton10.Click
        Session("insupd") = "ins"
        Response.Redirect("Technition_add.aspx")
    End Sub

    Protected Sub LinkButton13_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton13.Click
        Session("insupd") = "ins"
        Response.Redirect("Ambulance_add.aspx")
    End Sub

    Protected Sub LinkButton14_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton14.Click
        Session("insupd") = "ins"
        Response.Redirect("goods_transport_add.aspx")
    End Sub

    Protected Sub LinkButton11_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton11.Click
        Session("insupd") = "upd"
        Response.Redirect("Home_teacher_add.aspx")
    End Sub

    Protected Sub LinkButton9_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton9.Click
        Session("insupd") = "upd"
        Response.Redirect("tutorial_teacher_add.aspx")
    End Sub

    Protected Sub LinkButton7_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton7.Click
        Session("insupd") = "upd"
        Response.Redirect("HouseKeeperadd.aspx")
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click
        Session("insupd") = "upd"
        Response.Redirect("Technition_add.aspx")
    End Sub

    Protected Sub LinkButton8_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton8.Click
        Session("insupd") = "upd"
        Response.Redirect("Ambulance_add.aspx")
    End Sub

    Protected Sub LinkButton15_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton15.Click
        Session("insupd") = "upd"
        Response.Redirect("goods_transport_add.aspx")
    End Sub

    Protected Sub LinkButton16_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton16.Click
        Session("shdlcatg") = "evntm"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton17_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton17.Click
        Session("shdlcatg") = "hmtech"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton18_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton18.Click
        Session("shdlcatg") = "tutortech"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton19_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton19.Click
        Session("shdlcatg") = "hosekep"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton20_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton20.Click
        Session("shdlcatg") = "techn"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton21_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton21.Click
        Session("shdlcatg") = "ambul"
        Response.Redirect("show_delete_all.aspx")
    End Sub

    Protected Sub LinkButton22_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton22.Click
        Session("shdlcatg") = "gdsdel"
        Response.Redirect("show_delete_all.aspx")
    End Sub
End Class
