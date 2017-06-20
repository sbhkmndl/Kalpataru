<%@ Page Title="Goods Transport Add or Update" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="goods_transport_add.aspx.vb" Inherits="goods_transport_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 648px">
        <table style="width: 100%; height: 802px">
            <tr>
                <td colspan="6" align="center" 
                
                    style="background-position: -3px -130px; font-size: 20px; background-image: url('images/bg%20img/pic08-2.jpg'); height: 140px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 37px;">
                </td>
                <td colspan="4" style="height: 37px">
                    <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Good Transport</b></span></marquee></td>
                <td style="height: 37px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 24px;">
                    </td>
                <td style="width: 329px; height: 24px;">
                    </td>
                <td style="width: 40px; height: 24px;">
                    </td>
                <td style="width: 375px; height: 24px;">
                    </td>
                <td class="style4" style="width: 224px; height: 24px;">
                    </td>
                <td style="height: 24px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; ">
                    </td>
                <td style="font-size: 20px;" align="right">
                    <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Select ID" Visible="False"></asp:Label>
                </td>
                <td style="width: 40px; ">
                    </td>
                <td style="width: 375px; ">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        Height="20px" Width="132px" Visible="False" DataSourceID="SqlDataSource1" 
                        DataTextField="gdid" DataValueField="gdid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [gdid] FROM [gddeliver]"></asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Select" Visible="False" />
                </td>
                <td style="width: 224px;">
                    </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 78px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 78px;" class="style6">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Transport Driver Name"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 78px;">
                    </td>
                <td style="width: 375px; height: 78px;">
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td class="style4" style="width: 224px; height: 78px;">
                    </td>
                <td class="style6" style="height: 78px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 34px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 34px;" class="style6">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Gender"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 34px;">
                    </td>
                <td style="width: 375px; height: 34px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Female" />
                </td>
                <td class="style4" style="width: 224px; height: 34px;">
                    <asp:Label ID="Label29" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style6" style="height: 34px">
                    </td>
            </tr>
            <tr>
                <td style="height: 48px; width: 82px">
                </td>
                <td align="right" style="font-size: 20px; ">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Email"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px;">
                    &nbsp;</td>
                <td style="height: 48px; width: 375px">
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td style="height: 48px; width: 224px;">
                </td>
                <td style="height: 48px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 97px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 97px;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Address"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 97px;">
                    </td>
                <td style="width: 375px; height: 97px;">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Height="68px" 
                    Width="319px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4" style="width: 224px; height: 97px;">
                    </td>
                <td style="height: 97px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 47px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 47px;" class="style6">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Upload a Picture"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 47px;">
                    </td>
                <td style="width: 375px; height: 47px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="232px" />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Upload" />
                    <asp:Label ID="upurl" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="style4" style="width: 224px; height: 47px;">
                    </td>
                <td class="style6" style="height: 47px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 48px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 48px;" class="style6">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Mobile No."></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 48px;">
                    </td>
                <td style="width: 375px; height: 48px;">
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                </td>
                <td class="style4" style="width: 224px; height: 48px;">
                    </td>
                <td class="style6" style="height: 48px">
                    </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 44px;">
                </td>
                <td align="right" style="font-size: 20px; height: 44px;">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Car No."></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 44px;">
                </td>
                <td style="width: 375px; height: 44px;">
                    <asp:TextBox ID="TextBox17" runat="server" 
                    Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;</td>
                <td style="height: 44px; width: 224px;">
                </td>
                <td style="height: 44px">
                </td>
            </tr>
            <tr>
                <td style="width: 82px; height: 22px;">
                    </td>
                <td align="right" style="font-size: 20px; height: 22px;">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Area"></asp:Label>
                </td>
                <td align="right" style="font-size: 20px; width: 40px; height: 22px;">
                    </td>
                <td style="width: 375px; height: 22px;">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="172px">
                        <asp:ListItem>Panskura</asp:ListItem>
                        <asp:ListItem>Midnapore</asp:ListItem>
                        <asp:ListItem>Debra</asp:ListItem>
                        <asp:ListItem>Ghatal</asp:ListItem>
                        <asp:ListItem>Khragpur</asp:ListItem>
                        <asp:ListItem>Haldia</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="height: 22px; width: 224px;">
                    </td>
                <td style="height: 22px">
                    </td>
            </tr>
            <tr>
                <td style="height: 52px; width: 82px">
                </td>
                <td style="height: 52px; width: 329px">
                </td>
                <td style="height: 52px; width: 40px">
                    &nbsp;</td>
                <td align="center" style="height: 52px; width: 375px">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Register-Now-button1.jpg" Width="139px" />
                </td>
                <td style="height: 52px; width: 224px;">
                </td>
                <td style="height: 52px">
                </td>
            </tr>
            <tr>
                <td style="height: 52px; width: 82px">
                    &nbsp;</td>
                <td style="height: 52px; width: 329px">
                    &nbsp;</td>
                <td style="height: 52px; width: 40px">
                    &nbsp;</td>
                <td align="center" style="height: 52px; width: 375px">
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/update-button-purple-hi.png" Width="139px" 
                        Visible="False" />
                </td>
                <td style="height: 52px; width: 224px;">
                    &nbsp;</td>
                <td style="height: 52px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

