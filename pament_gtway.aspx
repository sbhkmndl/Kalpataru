<%@ Page Language="VB" AutoEventWireup="false" CodeFile="pament_gtway.aspx.vb" Inherits="pament_gtway" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style6
        {
            width: 100%;
            height: 576px;
        }
                
*
{ margin: 0;
  padding: 0;}

        .style11
        {
            width: 169px;
            height: 531px;
        }
        .style12
        {
            width: 329px;
            height: 531px;
        }
                  
span
{ color: #5C3A18;}

        .style13
        {
            width: 302px;
            height: 531px;
        }
        .style14
        {
            height: 531px;
        }
        .style15
        {
            width: 169px;
            height: 62px;
        }
        .style16
        {
            width: 329px;
            height: 62px;
        }
        .style17
        {
            width: 302px;
            height: 62px;
        }
        .style18
        {
            height: 62px;
        }
        .style20
        {
            height: 169px;
        }
        .style19
        {
            width: 100%;
            height: 109px;
        }
        .style32
        {
            width: 748px;
        }
        .style29
        {
            height: 53px;
            width: 1222px;
        }
        .style27
        {
            height: 53px;
            width: 715px;
        }
        .style24
        {
            height: 53px;
            width: 325px;
        }
        .style30
        {
            width: 1222px;
        }
        .style28
        {
            width: 715px;
        }
        
a {
	text-decoration: none;
	color: #341A39;
}

        .style26
        {
            width: 325px;
        }
        .style9
        {
            width: 329px;
        }
        .style10
        {
            width: 302px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding: 50px; height: 825px; background-color: #000000;">
        <table class="style6" 
            style="background-image: url('images/bg img/FreeGreatPicture.com-11747-background-color.jpg'); background-repeat: repeat">
            <tr>
                <td class="style11">
                </td>
                <td class="style12" 
                    style="vertical-align: top; text-align: left; line-height: 25px; word-spacing: 7px; letter-spacing: 1px; padding: 20px; font-weight: bold; font-size: large; color: #000000;">
                    Select Your Pament Mode<br />
                    <br />
                    Bill No.<br />
                    <br />
                    Customer ID<br />
                    <br />
                    Customer Name<br />
                    <br />
                    Total Amount to Be Paid<br />
                    <br />
                    <asp:Label ID="Label12" runat="server" ForeColor="Black" 
                        Text="Select Your Bank"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Card Holder Name"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Card No."></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Expire Date"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="CVV"></asp:Label>
                </td>
                <td class="style13" 
                    style="vertical-align: top; text-align: left; line-height: 25px; word-spacing: 7px; letter-spacing: 1px; padding: 20px; font-weight: bold; font-size: large; color: #000000;">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="26px" Width="184px">
                        <asp:ListItem>Internet Banking</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Pay Hand to Hand</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="184px">
                        <asp:ListItem Value="Select Bank">Select Banks</asp:ListItem>
                        <asp:ListItem>State Bank of India</asp:ListItem>
                        <asp:ListItem>United Bank of India</asp:ListItem>
                        <asp:ListItem>Union Bank of India</asp:ListItem>
                        <asp:ListItem>Axis Bank</asp:ListItem>
                        <asp:ListItem>Panjab Bank</asp:ListItem>
                        <asp:ListItem>Bandhan Bank</asp:ListItem>
                        <asp:ListItem>Alahabad Bank</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="188px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="188px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="188px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="188px"></asp:TextBox>
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="style15">
                </td>
                <td class="style16">
                </td>
                <td class="style17">
                    <asp:Button ID="Button1" runat="server" Text="Process" />
                </td>
                <td class="style18">
                    <asp:Button ID="Button2" runat="server" Text="Cancle Order" />
                </td>
            </tr>
            <tr>
                <td class="style20" colspan="4">
                    <asp:Panel ID="Panel1" runat="server" Height="152px" Visible="False">
                        <table class="style19">
                            <tr>
                                <td class="style32">
                                </td>
                                <td align="center" class="style29" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px; font-weight: bold; color: #000000;">
                                    <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Insert Your OTP"></asp:Label>
                                </td>
                                <td class="style27" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px; font-weight: bold; color: #000000;">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="212px"></asp:TextBox>
                                </td>
                                <td class="style24" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style32" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px">
                                    &nbsp;</td>
                                <td align="center" class="style30" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px; font-weight: bold; color: #000000;">
                                    &nbsp;</td>
                                <td class="style28" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px; font-weight: bold; color: #000000;">
                                    <asp:Button ID="Button3" runat="server" Text="Submit" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="Medium" 
                                        Font-Underline="True" ForeColor="Blue">Sent Again</asp:LinkButton>
                                </td>
                                <td class="style26" 
                                    style="vertical-align: top; line-height: 25px; word-spacing: 7px; letter-spacing: 2px; padding: 20px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</div>
    </form>
</body>
</html>
