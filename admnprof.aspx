<%@ Page Title="Admin Profile" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="admnprof.aspx.vb" Inherits="admnprof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 50px; height: 555px">
        <asp:Panel ID="Panel1" runat="server" Height="882px">
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
                    <td align="right" 
                        style="padding: 1px; vertical-align: top; line-height: 40px; letter-spacing: 1px; word-spacing: 8px; font-size: large; font-weight: bold; height: 463px;">
                        <asp:Panel ID="Panel2" runat="server" Height="690px">
                            <table style="width: 100%; height: 604px;">
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 12px;">
                                        </td>
                                    <td align="left" style="padding-left: 40px; height: 12px;">
                                        </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 45px;">
                                        USER ID</td>
                                    <td align="left" style="padding-left: 40px; height: 45px;">
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 50px;">
                                        USER NAME</td>
                                    <td align="left" style="padding-left: 40px; height: 50px;">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="235px" 
                                            Enabled="False"></asp:TextBox>
                                        <asp:TextBox ID="unme" runat="server" Height="24px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 51px;">
                                        TYPE</td>
                                    <td align="left" style="padding-left: 40px; height: 51px;">
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 46px;">
                                        AGE</td>
                                    <td align="left" style="padding-left: 40px; height: 46px;">
                                        <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="235px" 
                                            Enabled="False"></asp:TextBox>
                                        <asp:TextBox ID="uagee" runat="server" Height="24px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 59px;">
                                        GENDER</td>
                                    <td align="left" style="padding-left: 40px; height: 59px;">
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gend" 
                                            Text="Male" Enabled="False" />
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gend1" 
                                            Text="Male" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gend" 
                                            Text="Female" Enabled="False" />
                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="gend1" 
                                            Text="Female" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 20px;">
                                        ADDRESS</td>
                                    <td align="left" style="padding-left: 40px; height: 20px;">
                                        <asp:TextBox ID="TextBox3" runat="server" Height="76px" TextMode="MultiLine" 
                                            Width="285px" Enabled="False"></asp:TextBox>
                                        <asp:TextBox ID="uadr" runat="server" Height="76px" TextMode="MultiLine" 
                                            Width="285px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 15px;">
                                        MOBILE NO.</td>
                                    <td align="left" style="padding-left: 40px; height: 15px;">
                                        <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="235px" 
                                            Enabled="False"></asp:TextBox>
                                        <asp:TextBox ID="uphone" runat="server" Height="28px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 58px;">
                                        E-MAIL ID</td>
                                    <td align="left" style="padding-left: 40px; height: 58px;">
                                        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="235px" 
                                            Enabled="False"></asp:TextBox>
                                        <asp:TextBox ID="uemail" runat="server" Height="25px" Width="235px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="style5" style="width: 445px; height: 60px;">
                                        <asp:Label ID="Label6" runat="server" ForeColor="Black">Upload an Image</asp:Label>
                                    </td>
                                    <td align="left" style="padding-left: 40px; height: 60px;">
                                        <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="241px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5" style="width: 445px">
                                        &nbsp;</td>
                                    <td align="left">
                                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                            ImageUrl="~/images/update-button-purple-hi.png" Visible="False" Width="139px" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td align="center" 
                        style="padding: 30px 100px 30px 30px; vertical-align: top; line-height: 40px; letter-spacing: 1px; word-spacing: 8em; font-size: large; font-weight: bold;">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
</div> 
</asp:Content>

