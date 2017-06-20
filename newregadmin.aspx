<%@ Page Title="New Admin Registration" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="newregadmin.aspx.vb" Inherits="newregadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 335px">
   
    <table style="width: 100%; height: 950px">
        <tr>
            <td colspan="6" style="height: 27px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="6" style="height: 27px">
                <marquee behavior="alternate">&nbsp;&nbsp;&nbsp;&nbsp; <span style="vertical-align: middle; color :red; font-size:20"><b>Welcome to Registration Page</b></span></marquee></td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td style="width: 385px">
                &nbsp;</td>
            <td style="width: 60px">
                &nbsp;</td>
            <td style="width: 368px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Please Note User ID"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Name"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="32px" 
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Email"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="height: 48px; width: 368px">
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Password"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Age"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Height="32px" 
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Gender"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="Medium" ForeColor="#CC0000" GroupName="reGend" 
                    Text="Female" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Address"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Mobile No."></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Upload a Picture"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="237px" />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Choose Any Security"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Put Security Answer"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" Height="32px" 
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
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Put Verification Code Below"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox9" runat="server" Font-Size="Medium" Height="32px" 
                    Width="259px" Enabled="False" Font-Strikeout="True"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="False" 
                    Font-Italic="True" Font-Size="Medium" Font-Underline="True" 
                    ForeColor="#3333CC">Refresh</asp:LinkButton>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox9" ControlToValidate="TextBox8" 
                    ErrorMessage="Please correct captcha " ForeColor="#CC0000" 
                    style="font-weight: 700; font-size: large"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td style="width: 385px">
                &nbsp;</td>
            <td style="width: 60px">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox8" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Must Fill Box" 
                    style="font-weight: 700; font-size: large; color: #CC0000"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Enter an Admin UserID"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox12" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Medium" ForeColor="#9900CC"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 82px">
                &nbsp;</td>
            <td align="right" style="font-size: 20px; width: 385px;">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="Larger" ForeColor="#009999" Text="Enter an Admin Password"></asp:Label>
            </td>
            <td align="right" style="font-size: 20px; width: 60px;">
                &nbsp;</td>
            <td style="width: 368px">
                <asp:TextBox ID="TextBox13" runat="server" Font-Size="Medium" Height="32px" 
                    Width="319px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 52px; width: 82px">
            </td>
            <td style="height: 52px; width: 385px">
            </td>
            <td style="height: 52px; width: 60px">
                &nbsp;</td>
            <td align="center" style="height: 52px; width: 368px">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Register-Now-button1.jpg" Width="139px" />
            </td>
            <td style="height: 52px">
            </td>
            <td style="height: 52px">
            </td>
        </tr>
    </table>
   
</div>
</asp:Content>

