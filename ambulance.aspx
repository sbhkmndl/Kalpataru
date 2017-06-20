<%@ Page Title="Ambulance Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ambulance.aspx.vb" Inherits="ambulance" %>

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
            height: 774px;
        }
    .style14
    {
        height: 133px;
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
        .style16
        {
            width: 88px;
            height: 31px;
        }
        .style17
        {
            height: 31px;
        }
    .style8
    {
        width: 88px;
        height: 43px;
    }
    .style6
    {
        width: 88px;
        height: 42px;
    }
    .style7
    {
        height: 42px;
    }
    .style5
    {
        width: 88px;
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
        
*
{ margin: 0;
  padding: 0;}

        .style18
        {
            height: 184px;
        }
        .style19
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" style="width: auto; vertical-align: top;">
                <table class="style12" 
                
                    
                    
                    style="background-color: #33CC33; background-image: url('images/bg img/069eb168925973c3900d74beb63f9102.jpg'); background-repeat: repeat; width: 894px; padding-left: 20px; text-indent: 20px;">
                    <tr>
                        <td align="center" class="style14" 
                            
                            style="background-position: -14px -83px; background-image: url('images/bg img/graphics-ambulance-520123.jpg')">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="White" Text="Ambulance Service"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="background-color: #FF0066" class="style17">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="color: #FFFF66">
                            <asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Select Your Area&nbsp;&nbsp;" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" style="vertical-align: top">
                            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                Height="113px" Width="546px" AutoGenerateColumns="False" CellSpacing="2" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="abid" HeaderText="ID" SortExpression="abid" />
                                    <asp:BoundField DataField="dname" HeaderText="Driver Name" 
                                        SortExpression="dname" />
                                    <asp:BoundField DataField="anum" HeaderText="Ambulance Number" 
                                        SortExpression="anum" />
                                    <asp:BoundField DataField="dmob" HeaderText="Mob No." SortExpression="dmob" />
                                    <asp:BoundField DataField="gend" HeaderText="Gender" SortExpression="gend" />
                                </Columns>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [abid], [dname], [anum], [dmob], [gend] FROM [amblnc] WHERE ([area] = @area)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="area" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue" Text="ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image3" runat="server" Height="83px" Width="83px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue" Text="Ambulance No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue" Text="Area"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue" Text="Mobile No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Blue"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Apply" />
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
                </table>
            </td>
            <td class="style2" style="vertical-align: top">
                <div align="left" 
                style="height: 771px; background-color: #FFCC00; width: 250px;">
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
                                        <td align="center" colspan="3" class="style19">
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

