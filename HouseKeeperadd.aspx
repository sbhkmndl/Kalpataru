<%@ Page Title="House Keeper Add or Update" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="HouseKeeperadd.aspx.vb" Inherits="HouseKeeperadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 648px">
        <table style="width: 100%; height: 802px">
            <tr>
                <td colspan="6" align="center" 
                
                    style="background-position: -96px -111px; background-image: url('images/bg img/servies_banner_1.jpg'); height: 158px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px; height: 37px;">
                </td>
                <td colspan="4" style="height: 37px">
                    <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>House Keeper</b></span></marquee></td>
                <td style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td style="width: 329px">
                    &nbsp;</td>
                <td style="width: 60px">
                    &nbsp;</td>
                <td style="width: 389px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px; height: 46px;">
                    &nbsp;</td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Select ID" Visible="False"></asp:Label>
                </td>
                <td style="width: 60px; height: 46px;">
                    &nbsp;</td>
                <td style="width: 389px; height: 46px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        Height="20px" Width="132px" Visible="False" DataSourceID="SqlDataSource1" 
                        DataTextField="hkid" DataValueField="hkid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [hkid] FROM [hskeepr]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Select" Visible="False" />
                </td>
                <td style="height: 46px">
                    &nbsp;</td>
                <td style="height: 46px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 82px">
                    &nbsp;</td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="HouseKeeper Name"></asp:Label>
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
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Gender"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Female" />
                </td>
                <td>
                    <asp:Label ID="Label29" runat="server" Font-Bold="True"></asp:Label>
                </td>
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
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Upload a Picture"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px;">
                    &nbsp;</td>
                <td style="width: 389px">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="270px" />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Upload" />
                    <asp:Label ID="upurl" runat="server" Visible="False"></asp:Label>
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
                <td style="width: 82px; height: 41px;">
                </td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Rate"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 60px; height: 41px;">
                </td>
                <td style="width: 389px; height: 41px;">
                    <asp:TextBox ID="TextBox17" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;</td>
                <td style="height: 41px">
                </td>
                <td style="height: 41px">
                </td>
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

