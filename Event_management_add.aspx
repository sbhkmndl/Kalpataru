<%@ Page Title="Event Management Service add or Update" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="Event_management_add.aspx.vb" Inherits="Event_management_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 648px">
        <table style="width: 100%; height: 1008px">
            <tr>
                <td colspan="6" align="center" 
                
                    
                    style="background-position: -351px -348px; background-image: url('images/bg img/FormatFactory4.jpg'); height: 158px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px; height: 37px;">
                </td>
                <td colspan="4" style="height: 37px">
                    <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Event Management</b></span></marquee></td>
                <td style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 24px;">
                    </td>
                <td style="width: 329px; height: 24px;">
                    </td>
                <td style="width: 60px; height: 24px;">
                    </td>
                <td style="width: 389px; height: 24px;">
                    </td>
                <td style="height: 24px">
                    </td>
                <td style="height: 24px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 51px;">
                    </td>
                <td style="width: 329px; height: 51px;" align="right">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Select ID" Visible="False"></asp:Label>
                </td>
                <td style="width: 60px; height: 51px;">
                    </td>
                <td style="width: 389px; height: 51px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        Height="20px" Width="132px" DataSourceID="SqlDataSource1" 
                        DataTextField="mid" DataValueField="mid" Visible="False">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [mid] FROM [evntmng]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Select" Visible="False" />
                </td>
                <td style="height: 51px">
                    </td>
                <td style="height: 51px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Team Name"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Number of Member"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:TextBox ID="TextBox18" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 48px; width: 82px">
                </td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Email"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="height: 48px; width: 389px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td style="height: 48px">
                </td>
                <td style="height: 48px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Address"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Height="68px" 
                    Width="319px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Mobile No."></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Birthday"></asp:Label>
                </td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton3" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="math" 
                    Text="Yes" />
                    <asp:RadioButton ID="RadioButton4" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="math" 
                    Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox19" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="144px" placeholder="Rate"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="marriage"></asp:Label>
                </td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton5" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="eng" 
                    Text="Yes" />
                    <asp:RadioButton ID="RadioButton6" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="eng" 
                    Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox20" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="144px" placeholder="Rate"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="aniversery"></asp:Label>
                </td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton7" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="beng" 
                    Text="Yes" />
                    <asp:RadioButton ID="RadioButton8" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="beng" 
                    Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox21" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="144px" placeholder="Rate"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Reception"></asp:Label>
                </td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton9" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="hist" 
                    Text="Yes" />
                    <asp:RadioButton ID="RadioButton10" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="hist" 
                    Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox22" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="144px" placeholder="Rate"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Cult"></asp:Label>
                </td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton17" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="gerg" 
                    Text="Yes" />
                    <asp:RadioButton ID="RadioButton18" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="gerg" 
                    Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox23" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="144px" placeholder="Rate"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 52px; width: 82px">
                </td>
                <td style="height: 52px; width: 329px">
                </td>
                <td style="height: 52px; width: 60px">
                    &nbsp;</td>
                <td align="center" style="height: 52px; width: 389px">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Register-Now-button1.jpg" Width="139px" />
                </td>
                <td style="height: 52px">
                </td>
                <td style="height: 52px">
                </td>
            </tr>
            <tr>
                <td style="height: 52px; width: 82px">
                    &nbsp;</td>
                <td style="height: 52px; width: 329px">
                    &nbsp;</td>
                <td style="height: 52px; width: 60px">
                    &nbsp;</td>
                <td align="center" style="height: 52px; width: 389px">
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/update-button-purple-hi.png" Width="139px" 
                        Visible="False" />
                </td>
                <td style="height: 52px">
                    &nbsp;</td>
                <td style="height: 52px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

