<%@ Page Title="Orders" Language="VB" MasterPageFile="~/MasterPage3.master" AutoEventWireup="false" CodeFile="order_users.aspx.vb" Inherits="order_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="color: #000000; padding: 30px; height: 561px;">
    <asp:Panel ID="Panel1" runat="server" Height="543px" ScrollBars="Both">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" Font-Bold="False" ForeColor="#333333" Width="1024px" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="bllno" HeaderText="Bill No." />
                <asp:BoundField DataField="paidyn" HeaderText="Paid(Y/N)" />
                <asp:BoundField DataField="padthrgh" HeaderText="Paid Through" />
                <asp:BoundField DataField="amountt" HeaderText="Ammount" />
                <asp:BoundField DataField="prps" HeaderText="Perpose" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" BorderColor="Red" ForeColor="White" 
                Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </asp:Panel>
    </div>
</asp:Content>

