<%@ Page Title="Forget Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="frgetpss.aspx.vb" Inherits="frgetpss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 886px;
        }
        .style4
    {
        width: 100%;
            height: 239px;
        }
                        
*
{ margin: 0;
  padding: 0;}

        .style19
        {
            height: 57px;
        }
        .style20
        {
            width: 467px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td align="left" 
                style="background-position: -191px -2px; vertical-align: top; padding: 50px; margin: 50px; background-image: url('images/bg img/FreeGreatPicture.com-11747-background-color.jpg'); background-repeat: repeat">
                <asp:Panel ID="Panel3" runat="server" Height="231px">
                    <table class="style4">
                        <tr>
                            <td align="center" class="style19" colspan="2" 
            style="font-size: xx-large">
                                FORGET PASSWORD</td>
                        </tr>
                        <tr>
                            <td align="center" class="style20">
                                &nbsp;</td>
                            <td align="center">
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="ussr" 
                                    Text="Admin" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="ussr" 
                                    Text="User" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style20" style="font-weight: bold; font-size: medium">
                                Enter Your User ID</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style20" style="font-weight: bold; font-size: medium">
                                Enter Your Name</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style20" style="font-weight: bold; font-size: medium">
                                Enter Your E-mail ID</td>
                            <td align="center">
                                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="243px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style20" style="font-weight: bold; font-size: medium">
                                &nbsp;</td>
                            <td align="center">
                                <asp:Label ID="Label6" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style18" colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="Submit" />
                            </td>
                        </tr>
                    </table>
                    <asp:Panel ID="Panel4" runat="server" Height="259px">
                        <asp:MultiView ID="MultiView1" runat="server" Visible="False">
                            <asp:View ID="View1" runat="server">
                                <table class="style4">
                                    <tr>
                                        <td align="center" class="style18" colspan="2" 
                                            style="font-size: 20px; font-weight: bold">
                                            Password Change for&nbsp;&nbsp;
                                            <asp:Label ID="Label3" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            Your Security Question</td>
                                        <td align="center">
                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            Enter Answer</td>
                                        <td align="center">
                                            <asp:TextBox ID="TextBox5" runat="server" Height="28px" 
                                                Width="243px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            &nbsp;</td>
                                        <td align="center">
                                            <asp:Label ID="Label5" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" colspan="2">
                                            <asp:Button ID="Button3" runat="server" Text="Confirm" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table class="style4">
                                    <tr>
                                        <td align="center" class="style18" colspan="2" 
                                            style="font-size: 20px; font-weight: bold">
                                            Password Change for&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            Enter New Password</td>
                                        <td align="center">
                                            <asp:TextBox ID="TextBox6" runat="server" Height="28px" TextMode="Password" 
                                                Width="243px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            Confirm Password</td>
                                        <td align="center">
                                            <asp:TextBox ID="TextBox7" runat="server" Height="28px" TextMode="Password" 
                                                Width="243px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" style="font-weight: bold; font-size: medium">
                                            &nbsp;</td>
                                        <td align="center">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                                                ErrorMessage="Please New Password Correctly" ForeColor="Red"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" class="style18" colspan="2">
                                            <asp:Button ID="Button2" runat="server" Text="Confirm" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:View> 
                        </asp:MultiView>
                    </asp:Panel>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

