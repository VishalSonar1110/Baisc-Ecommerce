<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="Shoes.aspx.cs" Inherits="Shoes" %>
<%@ Register src="ShoesMenuControl.ascx" tagname="ShoesMenuControl" tagprefix="uc1" %>
<%@ Register Src="~/ShoesMenuControl.ascx" TagPrefix="uc2" TagName="ShoesMenuControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td style="height: 34px"></td>
                <td style="height: 34px; width: 693px;"></td>
                <td style="height: 34px"></td>
            </tr>
            <tr>
                <td style="height: 115px  background-color: #000099;" class="text-center"></td>
                <td style="border-color: #bbe432; height: 115px; width: 693px; font-size: 60px; text-decoration: blink; font-family: Impact; font-weight: lighter; font-style: normal; color: #FFFFFF; background-color: #212529;" class="text-center">Trending Shoes</td>
                <td style="height: 115px  background-color: #000099;" class="text-center"></td>
            </tr>
            <tr>
                   <td style="height: 34px"></td>
                <td style="height: 115px; width: 693px;"><uc2:ShoesMenuControl runat="server" ID="ShoesMenuControl" /></td>
                
                <td style="height: 34px"></td>
                     
                    
            </tr>
        </table>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
   <div class="products">
		<div class="section_container">
			<%--<div class="container">--%>
		<%--		<div class="row">
					<div class="col">
		--%>				<div class="products_container grid">
							
							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
							                <asp:DataList ID="dlCategory" runat="server" CssClass="mr-0" RepeatColumns="3" CellSpacing="20" Width="924px" >
             <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="307px" ImageUrl='<%# "Image/"+Eval("IMAGE") %>' Width="223px" />
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: x-large; font-style: normal; height: 44px;" class="text-center" >
                        <asp:Label ID="Label1" runat="server" style="font-size: large" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: x-large; font-style: normal; height: 44px; " class="text-center" ><strong>
                        Rs.<asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style=" :medium;  color: #333; font-size: x-large; font-style: normal; height: 44px;" class="text-center" >
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ProductDetail.aspx?ID="+Eval("ID") %>' Text='<%# "Buy" %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style=" :medium;  color: #333; font-size: large; font-style: normal; height: 8px;"></td>
                </tr>
            </table>
        </ItemTemplate>
       
         </asp:DataList>
							


						</div>
					</div>
				</div>
			<%--</div>--%>
		<%--</div>
	</div>--%>
							
            
</div>
	</div>


</asp:Content>

