<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="search_user.aspx.vb" Inherits="search_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 50px; height: 669px">
    <table style="width: 100%; height: 628px">
        <tr>
            <td align="center" colspan="2" style="vertical-align: top; height: 125px;">
                        <asp:Image ID="uprofimg" runat="server" Height="144px" />
                    </td>
        </tr>
        <tr>
            <td style="vertical-align: top; height: 9px; width: 505px;">
                &nbsp;</td>
            <td style="vertical-align: top; height: 9px;">
            </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        USER ID</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="uidd" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        USER NAME</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="unme" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        AGE</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="uagee" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        GENDER</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="ugndrr" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        ADDRESS</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="uadrr" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        MOBILE NO.</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="umobb" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
        <tr>
            <td align="right" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        E-MAIL ID</td>
            <td align="left" 
                style="padding-right: 50px; padding-left: 50px; font-size: 20px; font-weight: bold; color: #000000;">
                                        <asp:Label ID="umll" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
        </tr>
    </table>
</div>
</asp:Content>

