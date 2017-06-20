<%@ Page Title="Event Management Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Event_management.aspx.vb" Inherits="Event_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
        {
            width: 100%;
            height: 427px;
        }
        .style3
        {
            height: 100px;
            width: 799px;
        }
        .style2
        {
            height: 100px;
        }
        .style4
    {
        width: 100%;
        height: 225px;
    }
    .style10
    {
        height: 92px;
    }
    .style11
    {
        height: 92px;
        width: 87px;
    }
        .style12
        {
            width: 100%;
            height: 1145px;
        }
    .style14
    {
        height: 206px;
    }
    .style13
    {
        width: 100%;
        height: 87px;
    }
    .style15
    {
        height: 26px;
    }
        .style16
        {
            height: 24px;
        }
        .style17
        {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" style="width: auto; vertical-align: top; text-indent: 20px;">
                <table class="style12" 
                
                    
                    style="background-color: #33CC33; background-image: url('images/bg%20img/ds-woodsite-3.jpg'); background-repeat: repeat; width: 872px; text-indent: 20px; padding-left: 20px;">
                    <tr>
                        <td align="center" class="style14" 
                            style="background-position: center center; background-image: url('images/bg img/4.jpg'); background-repeat: no-repeat; background-attachment: scroll;">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="Aqua" Text="Event Managment Service"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="center" style="background-color: #FF0066">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style16">
&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" 
                                ForeColor="Aqua" Text="Select Event"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>Select Event</asp:ListItem>
                                <asp:ListItem Value="brt">Birthday</asp:ListItem>
                                <asp:ListItem Value="aniverc">Anniversary</asp:ListItem>
                                <asp:ListItem Value="recept">Reception</asp:ListItem>
                                <asp:ListItem Value="mrge">Merrage</asp:ListItem>
                                <asp:ListItem Value="cult">Cult</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style17">
                            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" 
                                Font-Italic="True" Font-Size="Medium" ForeColor="#FFFF99" 
                                Text="Select Your Budget"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                <asp:ListItem>Select Budget</asp:ListItem>
                                <asp:ListItem>10000</asp:ListItem>
                                <asp:ListItem>20000</asp:ListItem>
                                <asp:ListItem>30000</asp:ListItem>
                                <asp:ListItem>40000</asp:ListItem>
                                <asp:ListItem>50000</asp:ListItem>
                                <asp:ListItem>60000</asp:ListItem>
                                <asp:ListItem>70000</asp:ListItem>
                                <asp:ListItem>80000</asp:ListItem>
                                <asp:ListItem>90000</asp:ListItem>
                                <asp:ListItem>100000</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                GridLines="Vertical" Height="113px" Width="393px" 
                                AutoGenerateSelectButton="True">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="Button4" runat="server" Text="Unlike" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="vertical-align: top">
                            <asp:MultiView ID="MultiView2" runat="server">
                            <asp:View runat="server" ID="View3">
                                <table class="style13">
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="Selected Managent Team"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="Yellow"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" Text="ID" ForeColor="#66FFFF"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="Yellow"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="Rate"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="Yellow"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="Phone No."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="Yellow"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="No. of Member"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="Yellow"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="Event Date"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox7" runat="server" Width="181px"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="28px" 
                                                ImageUrl="~/images/calender.PNG" Width="37px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                                BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                                                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                                                ForeColor="#003399" Height="169px" Visible="False" Width="209px">
                                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                                                    Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                                <WeekendDayStyle BackColor="#CCCCFF" />
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
                                                Font-Size="Medium" ForeColor="#FFFF99" Text="Time"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                                <asp:ListItem>Select time</asp:ListItem>
                                                <asp:ListItem>Day</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Evening</asp:ListItem>
                                                <asp:ListItem>Night</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" 
                                                runat="server" Text="Submit" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View runat="server" ID="View4">
                                <table class="style13">
                                    <tr>
                                        <td>
                                            &nbsp;<asp:Label ID="Label9" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Write Your Suggetion" Font-Bold="True" ForeColor="#00FF99"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox5" runat="server" Width="460px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button3" runat="server" Text="Submit" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        <td class="style2" style="vertical-align: top">
            <div align="left" 
                style="height: 1103px; background-color: #FFCC00; width: 250px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View runat="server" ID="View2">
                        <div style="height: 313px">
                            <table class="style4">
                                <tr>
                                    <td class="style10">
                                    </td>
                                    <td class="style11">
                                        <asp:Image ID="Image1" runat="server" Height="99px" Width="95px" />
                                    </td>
                                    <td class="style10">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label2" runat="server" Text="User"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15" colspan="3" align="center">
                                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/changepss.aspx">Change Password</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15" colspan="3">
                                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/newuserreg.aspx">Admin Zone</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15" colspan="3">
                                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/userprof.aspx">User Zone</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </td>
    </tr>
</table>
</asp:Content>

