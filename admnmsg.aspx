<%@ Page Title="User's Messages" Language="VB" MasterPageFile="~/MasterPage2.master" AutoEventWireup="false" CodeFile="admnmsg.aspx.vb" Inherits="admnmsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 555px">
    <table style="width: 100%; height: 695px">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 158px; height: 50px">
                &nbsp;</td>
            <td style="height: 50px; width: 133px;">
                    &nbsp;</td>
            <td style="height: 50px">
                    &nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 158px; height: 50px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Size="Large">New Messages</asp:LinkButton>
            </td>
            <td style="height: 50px; width: 133px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                         AutoPostBack="True"  DataTextField="uid" 
                    DataValueField="uid" DataSourceID="SqlDataSource1" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [uid] FROM [msgs] WHERE (([rde] = @rde) AND ([sndr] = @sndr))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="rde" Type="String" />
                            <asp:Parameter DefaultValue="user" Name="sndr" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
            <td style="height: 50px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                         DataTextField="msges" DataValueField="msges" DataSourceID="SqlDataSource3" 
                    >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [msges] FROM [msgs] WHERE (([uid] = @uid) AND ([rde] = @rde) AND ([sndr] = @sndr))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="uid" 
                                PropertyName="SelectedValue" Type="String" />
                                <asp:Parameter DefaultValue="1" Name="rde" Type="String" />
                                 <asp:Parameter DefaultValue="user" Name="sndr" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 158px; height: 37px">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                    Font-Size="Large">Read messages</asp:LinkButton>
            </td>
            <td style="height: 37px; width: 133px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                         DataTextField="uid" DataValueField="uid" DataSourceID="SqlDataSource2" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [uid] FROM [msgs] WHERE (([rde] = @rde) AND ([sndr] = @sndr))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="rde" Type="String" />
                            <asp:Parameter DefaultValue="user" Name="sndr" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
            <td style="height: 37px">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                        DataTextField="msges" 
                    DataValueField="msges" DataSourceID="SqlDataSource4">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [msges] FROM [msgs] WHERE (([uid] = @uid) AND ([rde] = @rde) AND ([sndr] = @sndr))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="uid" 
                                PropertyName="SelectedValue" Type="String" />
                                <asp:Parameter DefaultValue="0" Name="rde" Type="String" />
                                <asp:Parameter DefaultValue="user" Name="sndr" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </td>
        </tr>
        <tr>
            <td>
            </td>
            <td class="style2" style="width: 158px">
                &nbsp;</td>
            <td colspan="2" rowspan="3">
                <asp:Panel ID="Panel1" runat="server" Height="598px" Font-Bold="True" 
                    Font-Size="Small">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         
                        EmptyDataText="There are no data records to display." Width="631px" DataSourceID="SqlDataSource5" 
                        >
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                            <asp:BoundField DataField="msgid" HeaderText="msgid" SortExpression="msgid" />
                            <asp:BoundField DataField="msges" HeaderText="msges" SortExpression="msges" />
                            <asp:BoundField DataField="det" HeaderText="det" SortExpression="det" />
                            <asp:BoundField DataField="tme" HeaderText="tme" SortExpression="tme" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [uid], [msgid], [msges], [det], [tme] FROM [msgs] WHERE (([uid] = @uid) AND ([msges] = @msges))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="uid" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList2" Name="msges" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                       
                        EmptyDataText="There are no data records to display." Width="628px" DataSourceID="SqlDataSource6"  
                        >
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                            <asp:BoundField DataField="msgid" HeaderText="msgid" SortExpression="msgid" />
                            <asp:BoundField DataField="msges" HeaderText="msges" SortExpression="msges" />
                            <asp:BoundField DataField="det" HeaderText="det" SortExpression="det" />
                            <asp:BoundField DataField="tme" HeaderText="tme" SortExpression="tme" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [uid], [msgid], [msges], [det], [tme] FROM [msgs] WHERE (([uid] = @uid) AND ([msges] = @msges))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList3" Name="uid" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList4" Name="msges" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Label ID="Label9" runat="server" Text="UID" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Message ID" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Message" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="90px" Width="90px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="90px" TextMode="MultiLine" 
                        Width="268px" Font-Size="Medium"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Reply" Font-Bold="True" 
                        Font-Size="Medium" />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" style="width: 158px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="width: 158px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</div> 
</asp:Content>

