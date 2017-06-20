<%@ Page Title="Home" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Default3" %><%@ Register assembly="OnBarcode.Barcode.ASPNET" namespace="OnBarcode.Barcode.ASPNET" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 1686px;
        }
        .style2
        {
            height: 115px;
        }
        .style3
        {
            height: 115px;
            width: 939px;
        }
    .style4
    {
        width: 100%;
    }
    .style5
    {
        width: 88px;
    }
    .style6
    {
        width: 88px;
        height: 42px;
    }
    .style7
    {
        height: 42px;
    }
    .style8
    {
        width: 88px;
        height: 43px;
    }
    .style10
    {
        height: 92px;
    }
    .style11
    {
        height: 92px;
        width: 87px;
    }
        .style16
        {
            width: 88px;
            height: 31px;
        }
        .style17
        {
            height: 31px;
        }
    .style15
    {
        height: 26px;
    }
        .style18
        {
            width: 88px;
            height: 8px;
        }
        .style19
        {
            height: 8px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" align="left" 
                
                style="background-image: url('images/bg img/FreeGreatPicture.com-11747-background-color.jpg'); background-repeat: repeat; vertical-align: top;">
                <div style="position: absolute; top: 271px; left: 8px; width: 827px; height: 196px;">
                    <div align="center" style="height: 97px">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" 
                            Font-Size="XX-Large" Text="WELCOME TO KALPATARU" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                            Text="ALWAYS FOR YOUR NEED" Font-Italic="True" Font-Size="Medium" 
                            ForeColor="#00FF99"></asp:Label>
                    </div>
                    <br />
                    <asp:Panel ID="Panel2" runat="server" Height="45px" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="#6600CC">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HAVE PROBLEMS IN YOUR DAILY WORK? WE ARE HERE FOR YOU. WE GIVE YOU THE 
                        SERVICES WITH OUR BEST.
                    </asp:Panel>
                </div>
                &nbsp;
                <div style="height: 188px; position: absolute; top: 476px; left: 10px; width: 828px;">
                    <asp:Image ID="Image2" runat="server" Height="184px" 
                        ImageUrl="~/images/bg img/banner_worksheets-banner1.jpg" Width="344px"   />
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 1px; left: 384px; width: 417px; height: 162px; font-size: medium; color: #000000; font-weight: bold;" 
                        align="center">
                    <br />
                    <br />
                    <br />
                    <br />
                    Live as if you were to die tomorrow. Learn as if you were to live forever</div>
                </div>
                <div style="height: 188px; position: absolute; top: 860px; left: 11px; width: 828px;">
                    <asp:Image ID="Image4" runat="server" Height="184px" 
                        ImageUrl="~/images/bg img/Welding-Technician.jpg" Width="344px" />
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 1px; left: 385px; width: 420px; height: 164px; font-size: medium; font-weight: bold;" 
                        align="center">
                    <br />
                    <br />
                    The real problem is not whether machines think<br />
                    <br />
                    <br />
                    but whether man do</div>
                </div>
                <div style="height: 188px; position: absolute; top: 667px; left: 7px; width: 828px;" 
                    align="right">
                <div style="position: absolute; top: 3px; left: 9px; width: 436px; height: 186px;"></div>
                    <asp:Image ID="Image3" runat="server" Height="187px" 
                        ImageUrl="~/images/bg img/logo-1.jpg" Width="340px" />
                </div>
                <div style="height: 188px; position: absolute; top: 1258px; left: 13px; width: 828px;" 
                    align="left">
                    <asp:Image ID="Image5" runat="server" Height="184px" 
                        ImageUrl="~/images/bg img/graphics-ambulance-520123.jpg" Width="344px" />
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 5px; left: 387px; width: 415px; height: 155px; font-size: medium; font-weight: bold;" 
                        align="center">
                    <br />
                    Life is most important then anything<br />
                    <br />
                    <br />
                    one ambulance can save your life</div>
                </div>
                <div style="height: 188px; position: absolute; top: 1651px; left: 15px; width: 828px;" 
                    align="left">
                    <asp:Image ID="Image9" runat="server" Height="184px" 
                        ImageUrl="~/images/bg img/mobile-combined.jpg" Width="344px" />
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 5px; left: 387px; width: 414px; height: 155px; font-size: medium; font-weight: bold;" 
                        align="center">
                    <br />
                    Now mobiles are key of connecting to the world<br />
                    <br />
                    <br />
                    make recharge, and stay connected</div>
                </div>
                <div style="height: 188px; position: absolute; top: 1055px; left: 9px; width: 828px;" 
                    align="right">
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 2px; left: 8px; width: 419px; height: 161px; font-size: medium; font-weight: bold;" 
                        align="center">
                    <br />
                    No matter how much planning you do,<br />
                    <br />
                    one tiny miscalculation,
                    <br />
                    <br />
                    one moment of distraction,<br />
                    <br />
                    can end it aal in an instant</div>
                    <asp:Image ID="Image6" runat="server" Height="184px" 
                        ImageUrl="~/images/bg img/FormatFactory4.jpg" Width="344px" />
                </div>
                <div style="height: 188px; position: absolute; top: 667px; left: 7px; width: 828px;" 
                    align="right">
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 3px; left: 9px; width: 409px; height: 157px; text-align: center; font-size: medium; font-weight: bold;">
                    <br />
                    Cleaning Your House while
                    <br />
                    <br />
                    your kids are still growing is like<br />
                    <br />
&nbsp;shoveling the walk
                    <br />
                    <br />
                    before it stops showing<br />
                    <br />
                    </div>
                    <asp:Image ID="Image1" runat="server" Height="187px" 
                        ImageUrl="~/images/bg img/logo-1.jpg" Width="340px" />
                </div>
                <div style="height: 188px; position: absolute; top: 1455px; left: 6px; width: 828px;" 
                    align="right">
                <div style="border: medium solid #FF0000; padding: 10px; position: absolute; top: 3px; left: 9px; width: 406px; height: 157px; font-size: medium; font-weight: bold;" 
                        align="center">
                    <br />
                    You can&#39;t understand a city without<br />
                    <br />
                    <br />
                    using its public transportation system</div>
                    <asp:Image ID="Image8" runat="server" Height="187px" 
                        ImageUrl="~/images/bg img/pic08-2.jpg" Width="340px" />
                </div>
                <div style="position: absolute; top: 0px; left: 385px; width: 436px; height: 186px;"></div>
                </td>
        <td class="style2" style="vertical-align: top">
            <div align="left" 
                style="height: 1428px; background-color: #FFCC00; width: 250px;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View runat="server" ID="View3">
                        <div style="height: 310px">
                            <table class="style4">
                                <tr>
                                    <td class="style16">
                                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
                                            Font-Size="Medium" Text="Username"></asp:Label>
                                    </td>
                                    <td class="style17">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style8" colspan="2">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="149px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                                            Font-Size="Medium" Text="Password"></asp:Label>
                                    </td>
                                    <td class="style7">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" class="style6" colspan="2">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="154px" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="39px" 
                                            ImageUrl="~/images/login-button.png" Width="92px" />
                                        &nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        </td>
                                    <td align="left" class="style19">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td align="center">
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/newuserreg.aspx">New User?</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td align="center">
                                        <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/frgetpss.aspx">Forget Password?</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td align="right">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>
                    <asp:View runat="server" ID="View4">
                        <div style="height: 313px">
                            <table class="style4">
                                <tr>
                                    <td class="style10">
                                    </td>
                                    <td class="style11">
                                        <asp:Image ID="Image7" runat="server" Height="99px" Width="95px" />
                                    </td>
                                    <td class="style10">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label13" runat="server" Text="User"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15" colspan="3" align="center">
                                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/changepss.aspx">Change Password</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15" colspan="3">
                                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" 
                                            NavigateUrl="~/newfacilityadd.aspx" Visible="False">Admin Zone</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style15" colspan="3">
                                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="False" 
                                            Font-Underline="True" ForeColor="#CC0000" NavigateUrl="~/userprof.aspx">User Zone</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </td>
            
        </tr>
    </table>
</asp:Content>

