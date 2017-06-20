<%@ Page Title="Profile" Language="VB" MasterPageFile="~/MasterPage3.master" AutoEventWireup="false" CodeFile="userprof.aspx.vb" Inherits="userprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            height: 463px;
        }
        .style7
        {
            width: 406px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 50px; height: 764px; background-image: url('images/templatemo_post_bg_repeat.gif'); background-repeat: repeat;">
        <asp:Panel ID="Panel1" runat="server" Height="764px">
            <table style="width: 100%; height: 452px; vertical-align: top;">
                <tr>
                    <td align="right" style="height: 30px">
                        <asp:Button ID="Button1" runat="server" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 102px">
                        <asp:Image ID="Image2" runat="server" Height="144px" />
                    </td>
                </tr>
                <tr>
                    <td align="right" class="style6" 
                        style="padding: 1px; vertical-align: top; line-height: 40px; letter-spacing: 1px; word-spacing: 8px; font-size: large; font-weight: bold;">
                        <asp:Panel ID="Panel2" runat="server" Height="454px">
                            <table style="width: 100%; height: 424px;">
                                <tr>
                                    <td align="right" class="style7">
                                        &nbsp;</td>
                                    <td align="left" style="padding-left: 40px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        USER ID</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        USER NAME</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="24px" 
                                            Width="235px"></asp:TextBox>
                                        <asp:TextBox ID="unme" runat="server" Height="24px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        TYPE</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        AGE</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Height="24px" 
                                            Width="235px"></asp:TextBox>
                                        <asp:TextBox ID="uagee" runat="server" Height="24px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        GENDER</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Enabled="False" 
                                            GroupName="gnd" Text="Male" />
                                        <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="Black" 
                                            GroupName="gend1" Text="Male" />
                                        &nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton2" runat="server" Enabled="False" 
                                            GroupName="gnd" Text="Female" />
                                        <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="Black" 
                                            GroupName="gend1" Text="Female" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        ADDRESS</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Height="76px" 
                                            TextMode="MultiLine" Width="285px"></asp:TextBox>
                                        <asp:TextBox ID="uadr" runat="server" Height="76px" TextMode="MultiLine" 
                                            Width="285px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        MOBILE NO.</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" Height="28px" 
                                            Width="235px"></asp:TextBox>
                                        <asp:TextBox ID="uphone" runat="server" Height="28px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7" style="color: #000000;">
                                        E-MAIL ID</td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" Height="25px" 
                                            Width="235px"></asp:TextBox>
                                        <asp:TextBox ID="uemail" runat="server" Height="25px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style7">
                                        <asp:Label ID="Label6" runat="server" ForeColor="Black" Visible="False">Upload an Image</asp:Label>
                                    </td>
                                    <td align="left" style="padding-left: 40px">
                                        <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Visible="False" 
                                            Width="241px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                        style="padding: 30px 100px 30px 30px; vertical-align: top; line-height: 40px; letter-spacing: 1px; word-spacing: 8em; font-size: large; font-weight: bold;">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/images/update-button-purple-hi.png" Visible="False" Width="139px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>

