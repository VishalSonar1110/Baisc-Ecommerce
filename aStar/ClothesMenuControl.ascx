<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ClothesMenuControl.ascx.cs" Inherits="ClothesMenuControl" %>

<asp:DataList ID="dlMenu" runat="server"  RepeatDirection="Horizontal" CellSpacing="11" Width="798px" Height="45px" >
 
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Shoes.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>' Font-Bold="True" Font-Size="22px" ForeColor="#414141" text-transform ="uppercase" ></asp:HyperLink>
    </ItemTemplate>

                 
</asp:DataList>