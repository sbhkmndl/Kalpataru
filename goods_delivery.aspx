<%@ Page Title="Goods Delivery Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="goods_delivery.aspx.vb" Inherits="goods_delivery" %>

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
        .style12
        {
            width: 100%;
            height: 648px;
        }
    .style14
    {
        height: 133px;
    }
    .style13
    {
        width: 100%;
        height: 87px;
    }
        .style15
        {
            height: 22px;
        }
        .style2
        {
            height: 100px;
        }
        .style4
    {
        width: 100%;
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
        .style18
        {
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" style="width: auto; vertical-align: top;">
            <table class="style12" 
                
                    
                
                style="background-color: #33CC33; background-image: url('images/bg img/background_color_faded_surface_texture_50421_3840x2400.jpg'); background-repeat: repeat; width: 894px; text-indent: 20px; padding-left: 20px;">
                <tr>
                    <td align="center" class="style14" 
                            
                        style="background-position: -11px -98px; background-image: url('images/bg img/pic08-2.jpg')">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="Red" Text="Goods Delivery Service"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td align="center" style="background-color: #FF0066">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="color: #FFFF66">
&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Select Your Area&nbsp;&nbsp;" ForeColor="Yellow"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="172px" 
                                AutoPostBack="True">
                        <asp:ListItem>Select Area</asp:ListItem>
                        <asp:ListItem>Panskura</asp:ListItem>
                        <asp:ListItem>Midnapore</asp:ListItem>
                        <asp:ListItem>Debra</asp:ListItem>
                        <asp:ListItem>Ghatal</asp:ListItem>
                        <asp:ListItem>Khragpur</asp:ListItem>
                        <asp:ListItem>Haldia</asp:ListItem>
                    </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                </tr>
                <tr>
                    <td style="vertical-align: top">
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                GridLines="Vertical" Height="113px" Width="591px" 
                            AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="gdid" HeaderText="ID" SortExpression="gdid" />
                                <asp:BoundField DataField="dmname" HeaderText="Driver Name" 
                                    SortExpression="dmname" />
                                <asp:BoundField DataField="cno" HeaderText="Car No." SortExpression="cno" />
                                <asp:BoundField DataField="gdmob" HeaderText="Mob No." SortExpression="gdmob" 
                                    Visible="False" />
                                <asp:BoundField DataField="gend" HeaderText="Gender" SortExpression="gend" />
                            </Columns>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [gdid], [dmname], [cno], [gdmob], [gend] FROM [gddeliver] WHERE ([area] = @area)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="area" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style18">
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
                                            <asp:Label ID="Label7" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Selected Driver" ForeColor="Yellow"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label8" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Id  " ForeColor="Yellow"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="Car No."></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="Gender"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="White"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="Distance(km)"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:DropDownList 
                                                ID="DropDownList2" runat="server" AutoPostBack="True">
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                                <asp:ListItem>40</asp:ListItem>
                                                <asp:ListItem>50</asp:ListItem>
                                                <asp:ListItem>60</asp:ListItem>
                                                <asp:ListItem>70</asp:ListItem>
                                                <asp:ListItem>80</asp:ListItem>
                                                <asp:ListItem>90</asp:ListItem>
                                                <asp:ListItem>100</asp:ListItem>
                                                <asp:ListItem>110</asp:ListItem>
                                                <asp:ListItem>120</asp:ListItem>
                                                <asp:ListItem>130</asp:ListItem>
                                                <asp:ListItem>140</asp:ListItem>
                                                <asp:ListItem>150</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="Weight(kg)"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                                <asp:ListItem>40</asp:ListItem>
                                                <asp:ListItem>50</asp:ListItem>
                                                <asp:ListItem>60</asp:ListItem>
                                                <asp:ListItem>70</asp:ListItem>
                                                <asp:ListItem>80</asp:ListItem>
                                                <asp:ListItem>90</asp:ListItem>
                                                <asp:ListItem>100</asp:ListItem>
                                                <asp:ListItem>Truck</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style15">
                                            <asp:Label ID="Label11" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="RS/_"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label13" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text=" ₹"></asp:Label>
                                            &nbsp;&nbsp;
                                            <asp:Label ID="Label14" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                ForeColor="Yellow" Text="100.00"></asp:Label>
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
                                                Text="Write Your Suggetion" ForeColor="Yellow"></asp:Label>
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
                style="height: 708px; background-color: #FFCC00; width: 250px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View runat="server" ID="View6">
                        <div style="height: 313px">
                            <table class="style4">
                                <tr>
                                    <td class="style10">
                                    </td>
                                    <td class="style11">
                                        <asp:Image ID="Image2" runat="server" Height="99px" Width="95px" />
                                    </td>
                                    <td class="style10">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label17" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label18" runat="server" Text="User"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
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

