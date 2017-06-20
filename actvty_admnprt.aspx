<%@ Page Title="User's Activity" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="actvty_admnprt.aspx.vb" Inherits="actvty_admnprt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="padding: 100px; height: 648px">
     <table style="width: 100%; height: 30px">
         <tr>
             <td align="center" style="vertical-align: top">
                 <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                     Font-Italic="False" Font-Size="Medium" ForeColor="#CC0099">View All</asp:LinkButton>
             </td>
         </tr>
     </table>
     <table style="width: 100%; height: 597px">
         <tr>
             <td style="padding: 30px; vertical-align: top; color: #000000; font-size: medium;">
                 <asp:Panel ID="Panel1" runat="server" Height="593px" ScrollBars="Both">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         Width="813px">
                         <Columns>
                             <asp:BoundField DataField="uid" HeaderText="ID" />
                             <asp:BoundField DataField="activtyy" HeaderText="Activity" />
                         </Columns>
                     </asp:GridView>
                 </asp:Panel>
             </td>
         </tr>
     </table>
 </div> 
</asp:Content>

