<%@ Page Language="VB" AutoEventWireup="false" CodeFile="amb_bill.aspx.vb" Inherits="amb_prnt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ambulance Bill</title>
    <style type="text/css">

        .style55
        {
            width: 100%;
        }
                
*
{ margin: 0;
  padding: 0;}

        a {
	text-decoration: none;
	color: #341A39;
}

        .style6
        {
            width: 100%;
            height: 1295px;
        }
        .style50
        {
            height: 112px;
        }
                  
span
{ color: #5C3A18;}

        .style38
        {
            height: 38px;
        }
        .style44
        {
            height: 126px;
            }
        .style60
        {
            width: 202px;
            height: 42px;
        }
        .style51
        {
            height: 42px;
        }
        .style52
        {
            height: 435px;
            }
        .style58
        {
            width: 202px;
            height: 80px;
        }
        .style61
        {
            height: 80px;
        }
        .style62
        {
            width: 202px;
            height: 37px;
        }
        .style33
        {
            height: 37px;
            width: 428px;
        }
        .style63
        {
            height: 37px;
        }
        .style66
        {
            height: 37px;
            width: 124px;
        }
        .style68
        {
            width: 650px;
        }
        .style69
        {
            width: 646px;
        }
        .style70
        {
            width: 634px;
        }
        .style72
        {
            width: 621px;
        }
        .style73
        {
            width: 615px;
        }
        .style74
        {
            width: 613px;
        }
        .style75
        {
            width: 610px;
        }
        .style76
        {
            width: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div style="height: 1322px">
    <table class="style55">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                    Font-Italic="True" ForeColor="Blue" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
            </td>
            <td align="right" style="padding-right: 20px">
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Italic="True" ForeColor="#0033CC" >PRINT</asp:LinkButton>
            </td>
        </tr>
    </table>
    <bunch of html>
    <asp:Panel ID="Panel1" runat="server" Height="1301px">
        <table class="style6">
            <tr>
                <td align="center" bgcolor="#FEC941" class="style50" colspan="4" 
                    style="color: #000000">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="XX-Large" Text="KALPATARU" ForeColor="Black"></asp:Label>
                    <br />
                    For All Your Need</td>
            </tr>
            <tr>
                <td align="center" class="style38" colspan="4" 
                    style="background-color: #FF0000; font-weight: bold; color: #FFFFFF;">
                    Order An Ambulance</td>
            </tr>
            <tr>
                <td class="style44" colspan="4" 
                    style="padding: 1px; margin: 1px; color: #000000; font-weight: bold; vertical-align: top; letter-spacing: 1px; word-spacing: 2px; white-space: normal; border-width: thin; line-height: 35px;">
                    <table align="center" class="style55">
                        <tr>
                            <td align="left" class="style72" style="padding-left: 10px">
                                <asp:Image ID="Image1" runat="server" Height="143px" Width="118px" />
                            </td>
                            <td align="left" class="style73">
                                </td>
                            <td align="right" class="style74">
                                </td>
                            <td align="right" style="padding-right: 10px" class="style75">
                                <asp:Image ID="Image5" runat="server" Height="121px" Width="121px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                USER ID</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                            <td align="right" class="style70">
                                BILL NO.</td>
                            <td align="center">
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                CANDIDATE NAME</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                            <td align="right" class="style70">
                                PRICE</td>
                            <td align="center">
                                <asp:Label ID="Label9" runat="server" ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                AGE</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                            <td align="right" class="style70">
                                PAID</td>
                            <td align="center">
                                <asp:Label ID="Label10" runat="server" ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                GENDER</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                            <td align="right" class="style70">
                                <asp:Label ID="Label31" runat="server" ForeColor="Black" Text="PAID THROUGH"></asp:Label>
                            </td>
                            <td align="center">
                                <asp:Label ID="Label11" runat="server" ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                ADRESS</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td align="right" class="style70">
                                AREA</td>
                            <td align="center">
                                <asp:Label ID="Label32" runat="server" ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style68">
                                CONTACT NO.</td>
                            <td align="left" class="style69">
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style70">
                                &nbsp;</td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style60" 
                    
                    
                    style="vertical-align: middle; color: #0000FF; font-weight: bold; font-style: italic; text-align: left; padding-left: 20px;">
                    DATE:-</td>
                <td align="right" class="style51" colspan="3" 
                    
                    style="vertical-align: bottom; padding: 20px; color: #3333CC; font-weight: bold; font-style: italic;">
                    <br />
                    __________________________________<br />
                    <br />
                    CANDIATE SIGNATURE</td>
            </tr>
            <tr>
                <td class="style52" colspan="4" 
                style="padding: 1px; margin: 1px; color: #000000; font-weight: bold; vertical-align: top; letter-spacing: 1px; word-spacing: 2px; white-space: normal; border-width: thin; line-height: 35px;">
                    <table class="style55">
                        <tr>
                            <td align="left" class="style76" style="padding-left: 20px">
                                <asp:Image ID="Image2" runat="server" Height="143px" Width="118px" />
                            </td>
                            <td align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                DRIVER ID</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label12" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                DRIVER NAME</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label13" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                CONTACT NO.</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label14" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                GENDER</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label15" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                AMBULANCE NO.</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label20" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                ORDER DATE</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label25" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 10px;" 
                                class="style76">
                                ORDER TIME</td>
                            <td align="left" style="font-weight: bold; color: #000000; padding-left: 30px;">
                                <asp:Label ID="Label26" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style58" 
                    
                    style="vertical-align: middle; color: #0000FF; font-weight: bold; font-style: italic; text-align: left; padding-left: 20px;">
                    DATE:-</td>
                <td align="right" colspan="3" 
                    
                    style="vertical-align: bottom; padding: 20px; color: #3333CC; font-weight: bold; font-style: italic;" 
                    class="style61">
                    <br />
                    __________________________________<br />
                    <br />
                    AUTHORIZATION SIGNATURE</td>
            </tr>
            <tr>
                <td class="style62">
                    </td>
                <td class="style33">
                    </td>
                <td class="style66">
                    </td>
                <td class="style63">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style11" colspan="4" 
                    style="background-color: #FEC941; color: #000000;">
                    © 2016&nbsp; KALPATARU</td>
            </tr>
        </table>
    </asp:Panel>
    </bunch of html>
    </div>
    </form>
</body>
</html>
