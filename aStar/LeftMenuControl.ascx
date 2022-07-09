<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenuControl.ascx.cs" Inherits="LeftMenuControl" %>
<asp:DataList ID="dlMenu" runat="server" OnSelectedIndexChanged="dlMenu_SelectedIndexChanged" RepeatDirection="Horizontal" CellSpacing="11" Width="798px" Height="45px" >
 
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "HomeCAT.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>' Font-Bold="True" Font-Size="22px" ForeColor="#414141" text-transform ="uppercase" ></asp:HyperLink>
    </ItemTemplate>

                 
</asp:DataList>