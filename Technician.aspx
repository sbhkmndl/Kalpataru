<%@ Page Title="Technician Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Technician.aspx.vb" Inherits="Technician" %>

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
        height: 178px;
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
        .style12
        {
            width: 100%;
            height: 648px;
        }
    .style14
    {
        height: 157px;
    }
    .style13
    {
        width: 100%;
        height: 87px;
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
    .style15
    {
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" style="width: auto; vertical-align: top;">
                <table class="style12" 
                    
                    style="background-color: #33CC33; background-image: url('images/bg%20img/FreeGreatPicture.com-11747-background-color.jpg'); background-repeat: repeat; width: 898px; text-indent: 20px; padding-left: 20px;">
                    <tr>
                        <td align="center" class="style14" 
                            style="background-position: -18px -38px; background-image: url('images/bg img/Welding-Technician.jpg')">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="White" Text="Technician Service"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="center" style="background-color: #FF0066">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Select Your Perpose&nbsp;&nbsp;"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="182px" 
                                AutoPostBack="True">
                                <asp:ListItem>Select Perpose</asp:ListItem>
                        <asp:ListItem>computer</asp:ListItem>
                        <asp:ListItem>electric</asp:ListItem>
                        <asp:ListItem>car</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                GridLines="Vertical" Height="113px" Width="393px" 
                                AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="tcid" HeaderText="ID" SortExpression="tcid" />
                                    <asp:BoundField DataField="tcname" HeaderText="Name" SortExpression="tcname" />
                                    <asp:BoundField DataField="gend" HeaderText="Gender" SortExpression="gend" />
                                    <asp:BoundField DataField="pno" HeaderText="Mob No." SortExpression="pno" 
                                        Visible="False" />
                                    <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
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
                                SelectCommand="SELECT [tcid], [tcname], [gend], [pno], [rate] FROM [techn] WHERE ([prpse] = @prpse)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList3" Name="prpse" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
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
                                            <asp:Label ID="Label7" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Selected Technician"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#006666"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label8" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Technician Id  "></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#006666"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label17" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Perpose"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#006666"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label15" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Gender"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#006666"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label16" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Rate"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#006666"></asp:Label>
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
                                                Text="Write Your Suggetion"></asp:Label>
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
                                        <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label13" runat="server" Text="User"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
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

