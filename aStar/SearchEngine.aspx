<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="SearchEngine.aspx.cs" Inherits="SearchEngine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <table class="w-100" style="height: 111px">
            <tr>
                <td style="height: 34px; width: 155px;"></td>
                <td style="height: 34px; width: 751px;"></td>
                <td style="height: 34px"></td>
            </tr>
            <tr>
                <td class="text-center" style="height: 115px  background-color: #000099; width: 155px;"></td>
                <td class="text-center" style="border-color: #bbe432; height: 115px; width: 751px; font-size: 60px; text-decoration: blink; font-family: Impact; font-weight: lighter; font-style: normal; color: #FFFFFF; background-color: #212529;">Search Results</td>
                <td class="text-center" style="height: 115px  background-color: #000099;"></td>
            </tr>
        </table>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      
   <div class="products">
		<div class="section_container" style="left: 0px; top: -46px; height: 1000px">
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
