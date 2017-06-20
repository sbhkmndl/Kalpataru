<%@ Page Title="Change Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="changepss.aspx.vb" Inherits="changepss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 100%;
            height: 611px;
        }
                
*
{ margin: 0;
  padding: 0;}

        .style3
        {
            height: 100px;
            }
        .style2
        {
            height: 100px;
        }
        .style4
    {
        width: 100%;
            height: 229px;
        }
        .style18
        {
        }
        .style19
        {
            height: 57px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" 
                style="margin: 100px; padding: 50px; vertical-align: top; background-image: url('images/bg img/free-wallpaper-2.jpg'); background-repeat: repeat; font-weight: bold; color: #000000; line-height: 30px; font-size: medium;" 
                align="left">
                <asp:Panel ID="Panel3" runat="server" Height="330px">
                    <table class="style4">
                        <tr>
                            <td align="center" class="style19" colspan="2" style="font-size: xx-large">
                                CHANGE PASSWORD</td>
                        </tr>
                        <tr>
                            <td align="center" class="style18">
                                &nbsp;</td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" class="style18">
                                Enter Old Password</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox10" runat="server" Height="28px" TextMode="Password" 
                                    Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style18">
                                Enter Your New Password</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox11" runat="server" Height="28px" TextMode="Password" 
                                    Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style18">
                                Confirm Password</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox12" runat="server" Height="28px" TextMode="Password" 
                                    Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style18">
                                <asp:Label ID="Label20" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </td>
                            <td align="center">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="TextBox11" ControlToValidate="TextBox12" 
                                    ErrorMessage="Please New Password Correctly" ForeColor="Red"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style18" colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="Confirm" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

