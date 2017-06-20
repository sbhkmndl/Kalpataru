<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="show_delete_all.aspx.vb" Inherits="show_delete_all" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="padding: 70px 7px 70px 7px; height: 1003px; color: #000000; font-size: medium; letter-spacing: 1px;">
    <asp:Panel ID="Panel1" runat="server" Height="882px">
        <table style="width: 100%; height: 838px;">
            <tr>
                <td style="padding-left: 170px; vertical-align: top; height: 31px; padding-right: 0px;">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select Catagory</asp:ListItem>
                        <asp:ListItem Value="ambul">Ambulance</asp:ListItem>
                        <asp:ListItem Value="evntm">Event Management</asp:ListItem>
                        <asp:ListItem Value="gdsdel">Goods Delivery</asp:ListItem>
                        <asp:ListItem Value="hmtech">Home Teacher</asp:ListItem>
                        <asp:ListItem Value="hosekep">House Keeper</asp:ListItem>
                        <asp:ListItem Value="techn">Technician</asp:ListItem>
                        <asp:ListItem Value="tutortech">Tutorial Teacher</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Show all" />
                </td>
            </tr>
            <tr>
                <td style="padding-left: 170px; vertical-align: top; height: 18px; padding-right: 0px;">
                    &nbsp;ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="251px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Search" />
                </td>
            </tr>
            <tr>
                <td style="height: 415px; vertical-align: top;">
                    <asp:Panel ID="Panel2" runat="server" Height="482px" ScrollBars="Both">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                            Width="1063px">
                        </asp:GridView>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
            <td style="vertical-align: top">
            
                <asp:Panel ID="Panel3" runat="server" Height="133px">
                    <table style="width: 100%">
                       <tr>
            <td style="padding: 7px 170px 0px 170px; vertical-align: top; height: 115px;">
                <asp:Image ID="Image2" runat="server" Height="118px" Width="102px" />
                </td>
            </tr>
            <tr>
                <td style="padding: 7px 170px 7px 170px; vertical-align: top">
                    ID--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding: 7px 170px 7px 170px; vertical-align: top">
                    Name--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding: 7px 170px 7px 170px; vertical-align: top">
                    Catagory--&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding: 7px 250px 7px 250px; vertical-align: top">
                    <asp:Button ID="Button1" runat="server" Text="Delete" />
                    <asp:Button ID="Button2" runat="server" Text="Confirm" Visible="False" />
                </td>
            </tr>
                    </table>
                </asp:Panel>
            
            </td>
            </tr>
        </table>
    </asp:Panel>
</div> 
</asp:Content>

