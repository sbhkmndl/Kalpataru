<%@ Page Title="Login" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 398px;
        }
        .style2
        {
            height: 68px;
        }
        .style3
        {
            width: 208px;
        }
        .style4
        {
            height: 68px;
            width: 208px;
        }
        .style5
        {
            width: 314px;
        }
        .style6
        {
            height: 68px;
            width: 314px;
        }
        .style7
        {
            width: 314px;
            height: 77px;
        }
        .style8
        {
            width: 208px;
            height: 77px;
        }
        .style9
        {
            height: 77px;
        }
        .style18
        {
            height: 68px;
            width: 269px;
        }
        .style19
        {
            width: 269px;
            height: 77px;
        }
        .style20
        {
            width: 269px;
        }
        .style21
        {
            width: 314px;
            height: 11px;
        }
        .style22
        {
            width: 208px;
            height: 11px;
        }
        .style23
        {
            width: 269px;
            height: 11px;
        }
        .style24
        {
            height: 11px;
        }
        .style25
        {
            height: 44px;
            width: 314px;
        }
        .style26
        {
            height: 44px;
            width: 208px;
        }
        .style27
        {
            height: 44px;
            width: 269px;
        }
        .style28
        {
            height: 44px;
        }
        .style29
        {
            height: 143px;
        }
        .style30
        {
            height: 68px;
            width: 203px;
        }
        .style31
        {
            width: 203px;
            height: 77px;
        }
        .style32
        {
            width: 203px;
            height: 11px;
        }
        .style33
        {
            height: 44px;
            width: 203px;
        }
        .style34
        {
            width: 203px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="background-image: url('images/bg%20img/069eb168925973c3900d74beb63f9102.jpg'); background-repeat: repeat; height: 491px;">
    <table class="style1">
        <tr>
            <td align="left" class="style29" colspan="5" style="font-size: 21px">
                <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Welcome to Login Page</b></span></marquee></td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style4">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="#FF0066" GroupName="usertp" Text="Admin" />
            </td>
            <td align="center" class="style18">
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="#FF0066" GroupName="usertp" Text="User" />
            </td>
            <td class="style30" align="left">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                    Text="Choose admin or user" Visible="False"></asp:Label>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td align="left" class="style4">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="X-Large" ForeColor="Red" Text="Username"></asp:Label>
            </td>
            <td align="left" class="style18">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" Height="32px" 
                    Width="215px"></asp:TextBox>
            </td>
            <td class="style30" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Please Enter User ID" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td align="left" class="style8">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="X-Large" ForeColor="Red" Text="Password"></asp:Label>
            </td>
            <td align="left" class="style19">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Height="32px" 
                    TextMode="Password" Width="215px"></asp:TextBox>
            </td>
            <td class="style31" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*Please Enter Password" 
                    Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style21">
            </td>
            <td class="style22">
            </td>
            <td class="style23">
            </td>
            <td class="style32">
            </td>
            <td class="style24">
            </td>
        </tr>
        <tr>
            <td class="style25">
            </td>
            <td class="style26">
                &nbsp;</td>
            <td align="center" class="style27">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="49px" 
                    ImageUrl="~/images/loginbutton.png" Width="124px" />
            </td>
            <td class="style33">
            </td>
            <td class="style28">
            </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td align="center" class="style27" style="font-size: medium">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#FF0066">Forget Password?</asp:HyperLink>
                /<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#FF0066" NavigateUrl="~/newuserreg.aspx">New Registration</asp:HyperLink>
            </td>
            <td class="style33">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style34">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

