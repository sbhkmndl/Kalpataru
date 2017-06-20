<%@ Page Title="Tutorial Teacher Add or Update" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="tutorial_teacher_add.aspx.vb" Inherits="tutorial_teacher_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="height: 648px">
   
    <table style="width: 100%; height: 1246px">
        <tr>
            <td colspan="6" align="center" 
                style="background-position: -96px; background-image: url('images/bg%20img/banner3.jpg'); height: 158px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px; height: 37px;">
                </td>
            <td colspan="4" style="height: 37px">
                <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Tutorial Teacher</b></span></marquee></td>
            <td style="height: 37px">
                </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 18px;">
                </td>
            <td style="width: 329px; height: 18px;">
                </td>
            <td style="width: 60px; height: 18px;">
                </td>
            <td style="width: 389px; height: 18px;">
                </td>
            <td style="height: 18px">
                </td>
            <td style="height: 18px">
                </td>
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
                    DataTextField="tid" DataValueField="tid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [tid] FROM [tutorial]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                    Font-Size="Larger" ForeColor="#009999" Text="Teacher Name"></asp:Label>
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
            <td style="width: 82px; height: 29px;">
                </td>
            <td align="right" style="font-size: 20px; ">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999">Read Location</asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px; height: 29px;">
                </td>
            <td style="width: 389px; height: 29px;">
                <asp:TextBox ID="TextBox15" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td style="height: 29px">
                </td>
            <td style="height: 29px">
                </td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; ">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999">Time</asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 389px">
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Height="32px" 
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
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Readable Class"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 389px">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Height="32px" 
                    Width="139px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" 
                    ForeColor="#CC0000" Text="to"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox16" runat="server" Font-Size="Medium" Height="32px" 
                    Width="139px"></asp:TextBox>
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
                    Font-Size="Larger" ForeColor="#009999" Text="Rate Per Subject"></asp:Label>
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
            <td style="width: 82px; height: 41px;">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; ">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="All"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px; height: 41px;">
                &nbsp;</td>
            <td style="width: 389px; height: 41px;">
                <asp:RadioButton ID="RadioButton19" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="ale" 
                    Text="Yes" />
                <asp:RadioButton ID="RadioButton20" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="ale" 
                    Text="No" />
            </td>
            <td style="height: 41px">
                &nbsp;</td>
            <td style="height: 41px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td style="font-size: 20px;" align="right">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Mathematics"></asp:Label>
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
                    Font-Size="Larger" ForeColor="#009999" Text="English"></asp:Label>
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
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px; height: 36px;">
                </td>
            <td style="font-size: 20px; height: 36px;" align="right">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Bengali"></asp:Label>
            </td>
            <td style="width: 60px; height: 36px;">
                </td>
            <td style="width: 389px; height: 36px;">
                <asp:RadioButton ID="RadioButton7" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="beng" 
                    Text="Yes" />
                <asp:RadioButton ID="RadioButton8" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="beng" 
                    Text="No" />
            </td>
            <td style="height: 36px">
                </td>
            <td style="height: 36px">
                </td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td style="font-size: 20px;" align="right">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="History"></asp:Label>
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
                    Font-Size="Larger" ForeColor="#009999" Text="Geography"></asp:Label>
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
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Physical Science"></asp:Label>
            </td>
            <td style="width: 60px">
                &nbsp;</td>
            <td style="width: 389px">
                <asp:RadioButton ID="RadioButton11" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="psc" 
                    Text="Yes" />
                <asp:RadioButton ID="RadioButton12" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="psc" 
                    Text="No" />
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
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Life Science"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 389px">
                <asp:RadioButton ID="RadioButton13" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="lsc" 
                    Text="Yes" />
                <asp:RadioButton ID="RadioButton14" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="lsc" 
                    Text="No" />
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
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Chemestry"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 389px">
                <asp:RadioButton ID="RadioButton15" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="chem" 
                    Text="Yes" />
                <asp:RadioButton ID="RadioButton16" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="chem" 
                    Text="No" />
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

