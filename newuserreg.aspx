<%@ Page Title="New User Registration" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newuserreg.aspx.vb" Inherits="newuserreg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 1145px;
        }
        .style2
        {
            height: 63px;
        }
        .style3
        {
            width: 382px;
        }
        .style4
        {
            height: 63px;
            width: 382px;
        }
        .style5
        {
            width: 176px;
        }
        .style6
        {
            height: 63px;
            width: 176px;
        }
        .style7
        {
            width: 385px;
        }
        .style8
        {
            height: 63px;
            width: 385px;
        }
        .style13
        {
            height: 61px;
            width: 176px;
        }
        .style14
        {
            height: 61px;
            width: 382px;
        }
        .style15
        {
            height: 61px;
            width: 385px;
        }
        .style16
        {
            height: 61px;
        }
        .style17
        {
            width: 176px;
            height: 55px;
        }
        .style18
        {
            width: 382px;
            height: 55px;
        }
        .style19
        {
            width: 385px;
            height: 55px;
        }
        .style20
        {
            height: 55px;
        }
        .style21
        {
            width: 176px;
            height: 96px;
        }
        .style22
        {
            width: 382px;
            height: 96px;
        }
        .style23
        {
            width: 385px;
            height: 96px;
        }
        .style24
        {
            height: 96px;
        }
        .style25
        {
            height: 59px;
            width: 176px;
        }
        .style26
        {
            height: 59px;
            width: 382px;
        }
        .style27
        {
            height: 59px;
            width: 385px;
        }
        .style28
        {
            height: 59px;
        }
        .style29
        {
            width: 176px;
            height: 73px;
        }
        .style30
        {
            width: 382px;
            height: 73px;
        }
        .style31
        {
            width: 385px;
            height: 73px;
        }
        .style32
        {
            height: 73px;
        }
        .style33
        {
            width: 176px;
            height: 65px;
        }
        .style34
        {
            width: 382px;
            height: 65px;
        }
        .style35
        {
            width: 385px;
            height: 65px;
        }
        .style36
        {
            height: 65px;
        }
        .style37
        {
            width: 382px;
            font-size: x-large;
            color: #FF9999;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image: url('images/bg img/bg_green.png')">
    <table class="style1">
        <tr>
            <td align="left" colspan="4" style="vertical-align: top;">
                <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Welcome to Registration Page</b></span></marquee></td>
        </tr>
        <tr>
            <td class="style5" style="vertical-align: top">
                &nbsp;</td>
            <td class="style37" style="vertical-align: top" align="left">
                <strong>Please Note User ID</strong></td>
            <td align="left" class="style7" style="vertical-align: top">
                <asp:Label ID="Label15" runat="server" 
                    style="font-weight: 700; font-size: x-large; color: #CC3300" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" style="vertical-align: top">
                </td>
            <td align="left" class="style26" style="vertical-align: top">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Name"></asp:Label>
            </td>
            <td align="left" class="style27" style="vertical-align: top">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style29" style="vertical-align: top">
                </td>
            <td align="left" class="style30" style="vertical-align: top">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Email"></asp:Label>
            </td>
            <td align="left" class="style31" style="vertical-align: top">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style33" style="vertical-align: top">
                </td>
            <td align="left" class="style34" style="vertical-align: top">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Password"></asp:Label>
            </td>
            <td align="left" class="style35" style="vertical-align: top">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style36">
                </td>
        </tr>
        <tr>
            <td class="style13" style="vertical-align: top">
                </td>
            <td align="left" class="style14" style="vertical-align: top">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Age"></asp:Label>
            </td>
            <td align="left" class="style15" style="vertical-align: top">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style17" style="vertical-align: top">
                </td>
            <td align="left" class="style18" style="vertical-align: top">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Gender"></asp:Label>
            </td>
            <td align="left" class="style19" style="vertical-align: top">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#FFFF99" GroupName="reGend" 
                    Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#FFFF99" GroupName="reGend" 
                    Text="Female" />
            </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style21" style="vertical-align: top">
                </td>
            <td align="left" class="style22" style="vertical-align: top">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Address"></asp:Label>
            </td>
            <td align="left" class="style23" style="vertical-align: top">
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Height="68px" 
                    Width="319px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
            </td>
            <td class="style4" align="left" style="vertical-align: top">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Mobile No."></asp:Label>
            </td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" align="left" style="vertical-align: top">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Upload a Picture"></asp:Label>
            </td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="234px" />
            &nbsp;&nbsp;
                <br />
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Upload" 
                    CausesValidation="False" />
            </td>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" align="left" style="vertical-align: top">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Choose Any Security"></asp:Label>
            </td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    BackColor="#FFFF99" Font-Bold="True" Font-Italic="True" Font-Size="Medium" 
                    Height="78px" Width="320px">
                    <asp:ListItem>select any one</asp:ListItem>
                    <asp:ListItem>Enter Your First School name</asp:ListItem>
                    <asp:ListItem>Enter your College Nane</asp:ListItem>
                    <asp:ListItem>Enter Your Nick name</asp:ListItem>
                    <asp:ListItem>Enter Your city</asp:ListItem>
                    <asp:ListItem>Enter your age</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" align="left" style="vertical-align: top">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Put Security Answer"></asp:Label>
            </td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px" Font-Strikeout="True"></asp:TextBox>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" align="left" style="vertical-align: top">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#FFFFCC" Text="Put Verification Code Below"></asp:Label>
            </td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" Height="34px" 
                    ReadOnly="True" Width="235px" Enabled="False"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False" 
                    Font-Italic="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF99FF">Refresh</asp:LinkButton>
            </td>
            <td class="style2" align="left">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox9" ControlToValidate="TextBox8" 
                    ErrorMessage="Please correct captcha " ForeColor="#CC0000" 
                    style="font-weight: 700; font-size: large"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" align="left" style="vertical-align: top">
                &nbsp;</td>
            <td class="style8" align="left" style="vertical-align: top">
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td class="style2" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Must Fill Box" 
                    style="font-weight: 700; font-size: large; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" style="vertical-align: top">
                &nbsp;</td>
            <td class="style8" align="center" style="vertical-align: top">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Register-Now-button1.jpg" Width="139px" />
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" style="vertical-align: top">
                &nbsp;</td>
            <td class="style4" style="vertical-align: top">
                &nbsp;</td>
            <td class="style8" style="vertical-align: top">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" style="vertical-align: top">
                &nbsp;</td>
            <td class="style3" style="vertical-align: top">
                &nbsp;</td>
            <td class="style7" style="vertical-align: top">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

