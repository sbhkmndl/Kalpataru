<%@ Page Title="Tutorial Teacher Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="teacher_tutorial.aspx.vb" Inherits="teacher_tutorial" %>

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
            width: 860px;
        }
        .style2
        {
            height: 100px;
        }
        .style4
    {
        width: 100%;
        height: 174px;
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
        height: 153px;
            width: 912px;
        }
    .style13
    {
        width: 100%;
        height: 87px;
    }
        .style17
        {
            width: 912px;
        }
        .style18
        {
            height: 119px;
            width: 912px;
        }
        .style19
        {
            width: 912px;
            height: 11px;
        }
        .style20
        {
            width: 912px;
            height: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style3" style="width: auto; vertical-align: top;">
                <table class="style12" 
                
                    
                    style="background-color: #33CC33; background-image: url('images/templatemo_post_bg_repeat.gif'); background-repeat: repeat; width: auto; text-indent: 20px; padding-left: 20px;">
                    <tr>
                        <td align="center" class="style14" 
                            style="background-position: 9px -86px; background-image: url('images/bg img/banner3.jpg'); background-repeat: repeat">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="Black" Text="Tutorial Teacher Service"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="center" class="style19">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style17">
&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Select Your Subject&nbsp;&nbsp;"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>Select Subject</asp:ListItem>
                                <asp:ListItem Value="al">All</asp:ListItem>
                                <asp:ListItem Value="scnc">Science</asp:ListItem>
                                <asp:ListItem Value="arts">Arts</asp:ListItem>
                                <asp:ListItem Value="math">Mathematics</asp:ListItem>
                                <asp:ListItem Value="eng">English</asp:ListItem>
                                <asp:ListItem Value="beng">Bengali</asp:ListItem>
                                <asp:ListItem Value="hst">History</asp:ListItem>
                                <asp:ListItem Value="grg">Geography</asp:ListItem>
                                <asp:ListItem Value="psc">Physical Science</asp:ListItem>
                                <asp:ListItem Value="lsc">Life Science</asp:ListItem>
                                <asp:ListItem Value="cems">Chemestry</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style20">
                            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Italic="True" 
                                Font-Size="Medium" Text="Select Your Class&nbsp;"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                <asp:ListItem>Select Class</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18" style="vertical-align: top">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                GridLines="Vertical" Height="113px" Width="479px" 
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
                        <td align="right" class="style17">
                            <asp:Button ID="Button4" runat="server" Text="Unlike" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style17" style="vertical-align: top">
                            <asp:MultiView ID="MultiView2" runat="server">
                            <asp:View runat="server" ID="View3">
                                <table class="style13">
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label23" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Selected Teacher"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                            <asp:Label ID="Label24" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Teacher Id  "></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                                            <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label18" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Gender"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label19" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Rate Per Sebject"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label26" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Time"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label27" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Read Location"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label20" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Student Class"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label21" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Student Subject"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" Font-Italic="True" Font-Size="Medium" 
                                                Text="Enter Student Name"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox15" runat="server" Width="290px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button5" 
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
                        <td class="style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17">
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
                                        <asp:Label ID="Label13" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label14" runat="server" Text="User"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/changepss.aspx">Change Password</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/newuserreg.aspx">Admin Zone</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
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

