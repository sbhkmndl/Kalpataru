<%@ Page Title="Mobile Recherge Service" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="mob_rech.aspx.vb" Inherits="mob_rech" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style1
        {
            width: 100%;
            height: 427px;
        }
                
*
{ margin: 0;
  padding: 0;}

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
        height: 110px;
    }
        .style17
        {
            height: 31px;
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
        
        .style19
        {
            height: 20px;
        }
        .style15
        {
            height: 22px;
        }
        .style20
    {
        height: 56px;
    }
    .style21
    {
        height: 84px;
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
                            
                            
                        style="background-position: -14px -83px; background-image: url('images/bg img/mobile-combined.jpg')">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                                Font-Size="XX-Large" ForeColor="Black" Text="Mobile Recharge"></asp:Label>
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
                                Text="Select Your Operator" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="172px">
                            <asp:ListItem>Operators</asp:ListItem>
                            <asp:ListItem>Airtel</asp:ListItem>
                            <asp:ListItem>Vodafone</asp:ListItem>
                            <asp:ListItem>Idea</asp:ListItem>
                            <asp:ListItem>Reliance</asp:ListItem>
                            <asp:ListItem>MTS</asp:ListItem>
                            <asp:ListItem>BSNL</asp:ListItem>
                            <asp:ListItem>Aircel</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="color: #FFFF66">
                        <asp:Label ID="Label22" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Select State" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="23px" Width="172px">
                            <asp:ListItem>States</asp:ListItem>
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                            <asp:ListItem>Assam</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Chhattisgarh</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>Haryana</asp:ListItem>
                            <asp:ListItem>Himachal Pradesh</asp:ListItem>
                            <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                            <asp:ListItem>Jharkhand</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                            <asp:ListItem>Manipur</asp:ListItem>
                            <asp:ListItem>Meghalaya</asp:ListItem>
                            <asp:ListItem>Mizoram</asp:ListItem>
                            <asp:ListItem>Nagaland</asp:ListItem>
                            <asp:ListItem>Odisha</asp:ListItem>
                            <asp:ListItem>Panjab</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>Sikkim</asp:ListItem>
                            <asp:ListItem>Tamil Nadu</asp:ListItem>
                            <asp:ListItem>Telangana</asp:ListItem>
                            <asp:ListItem>Tripura</asp:ListItem>
                            <asp:ListItem>Uttar Pradesh</asp:ListItem>
                            <asp:ListItem>Uttarakhand</asp:ListItem>
                            <asp:ListItem>West Bengal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style20" align="left">
                        <asp:Label ID="Label20" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Enter Your Mobile No" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox10" runat="server" Height="29px" Width="277px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
                        <asp:Label ID="Label21" runat="server" Font-Italic="True" Font-Size="Medium" 
                                Text="Ammount" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox11" runat="server" Height="29px" Width="277px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Recharge" />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style21">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                </tr>
                <tr>
                    <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                </tr>
                <tr>
                    <td align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
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
                                    <td colspan="3" align="center">
                                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/changepss.aspx">Change Password</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15" colspan="3">
                                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/actvty_admnprt.aspx">Admin Zone</asp:HyperLink>
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

