<%@ Page Title="New Facility Add or Update" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="newfacilityadd.aspx.vb" Inherits="newfacilityadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 696px">
        <table style="width: 100%; height: 614px">
            <tr>
                <td style="height: 42px; width: 144px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    &nbsp;</td>
                <td style="height: 42px; width: 32px">
                    &nbsp;</td>
                <td style="width: 334px">
                    &nbsp;</td>
                <td style="width: 334px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 42px; width: 144px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/4.jpg" Width="197px" />
                </td>
                <td style="height: 42px; width: 225px">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099" >Insert New Event Management Servuce</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Event Management Servuce</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton16" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Event management</asp:LinkButton>
                </td>
                <td style="height: 42px; width: 32px">
                    &nbsp;</td>
                <td style="width: 334px">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/banner_worksheets-banner.jpg" Width="197px" />
                </td>
                <td style="width: 334px">
                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New Home Teacher</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Home Teacher</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Home Teacher</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="height: 42px; width: 144px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    &nbsp;</td>
                <td style="height: 42px; width: 32px">
                    &nbsp;</td>
                <td style="width: 334px">
                    &nbsp;</td>
                <td style="width: 334px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 42px; width: 144px">
                    &nbsp;</td>
                <td style="height: 42px; width: 225px">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/banner3.jpg" Width="197px" />
                </td>
                <td style="height: 42px; width: 225px">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New Tutorial Teacher</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Tutorial Teacher</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton18" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Tutorial Teacher</asp:LinkButton>
                </td>
                <td style="height: 42px; width: 32px">
                    &nbsp;</td>
                <td style="width: 334px">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/servies_banner_1.jpg" Width="197px" />
                </td>
                <td style="width: 334px">
                    <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New House Keeper</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update House Keeper</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton19" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete House Keeper</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="height: 19px; width: 144px">
                    &nbsp;</td>
                <td style="height: 19px; width: 225px">
                    &nbsp;</td>
                <td style="height: 19px; width: 225px">
                </td>
                <td style="height: 19px; width: 32px">
                    &nbsp;</td>
                <td style="height: 19px; width: 334px">
                </td>
                <td style="height: 19px; width: 334px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 19px; width: 144px">
                    &nbsp;</td>
                <td style="height: 19px; width: 225px">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/Welding-Technician.jpg" Width="197px" />
                </td>
                <td style="height: 19px; width: 225px">
                    <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New Technician</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Technician</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton20" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Technician</asp:LinkButton>
                </td>
                <td style="height: 19px; width: 32px">
                    &nbsp;</td>
                <td style="height: 19px; width: 334px">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="103px" 
                        ImageUrl="~/images/bg img/ambulance-wallpaper.jpg" Width="197px" />
                </td>
                <td style="height: 19px; width: 334px">
                    <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New Ambulance</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Ambulance</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton21" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Ambulance</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="height: 24px; width: 144px">
                    </td>
                <td style="height: 24px; width: 225px">
                </td>
                <td style="height: 24px; width: 225px">
                </td>
                <td style="height: 24px; width: 32px">
                    </td>
                <td style="height: 24px; width: 334px">
                </td>
                <td style="height: 24px; width: 334px">
                </td>
            </tr>
            <tr>
                <td style="height: 162px; width: 144px">
                    </td>
                <td style="height: 162px; width: 225px">
                </td>
                <td style="height: 162px; width: 225px">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="128px" 
                        ImageUrl="~/images/bg img/pic08-2.jpg" Width="213px" />
                </td>
                <td style="height: 162px; width: 32px">
                    </td>
                <td style="height: 162px; width: 334px">
                    <asp:LinkButton ID="LinkButton14" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Insert New Googs Delivery Transport</asp:LinkButton>
                    <br />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton15" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Update Googs Delivery Transport</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton22" runat="server" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Medium" ForeColor="#CC0099">Show/Delete Goods Delivery Transport</asp:LinkButton>
                </td>
                <td style="height: 162px; width: 334px">
                </td>
            </tr>
            <tr>
                <td style="height: 19px; width: 144px">
                    </td>
                <td style="height: 19px; width: 225px">
                </td>
                <td style="height: 19px; width: 225px">
                </td>
                <td style="height: 19px; width: 32px">
                    </td>
                <td style="height: 19px; width: 334px">
                </td>
                <td style="height: 19px; width: 334px">
                </td>
            </tr>
            <tr>
                <td style="height: 19px; width: 144px">
                    &nbsp;</td>
                <td style="height: 19px; width: 225px">
                    &nbsp;</td>
                <td style="height: 19px; width: 225px">
                    &nbsp;</td>
                <td style="height: 19px; width: 32px">
                    &nbsp;</td>
                <td style="height: 19px; width: 334px">
                    &nbsp;</td>
                <td style="height: 19px; width: 334px">
                    &nbsp;</td>
            </tr>
        </table>
</div>
</asp:Content>

