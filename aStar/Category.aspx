<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<%@ Register Src="~/LeftMenuControl.ascx" TagPrefix="uc1" TagName="LeftMenuControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:LeftMenuControl runat="server" ID="LeftMenuControl" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="form1" runat="server">
         <asp:DataList ID="dlCategory" runat="server" CssClass="mr-0" RepeatColumns="3" CellSpacing="60">
             <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="238px" ImageUrl='<%# "Image/"+Eval("IMAGE") %>' Width="226px" />
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: large; font-style: normal;" >Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: large; font-style: normal;" >Price:<asp:Label ID="Label2" runat="server"    Text ='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: large; font-style: normal;" >
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ProductDetail.aspx?ID="+Eval("ID") %>' Text='<%# "Buy" %>'></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
       
         </asp:DataList>
     </form>
    
</asp:Content>

