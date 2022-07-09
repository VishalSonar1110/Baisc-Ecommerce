<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="home" style="left: 0px; top: 0px; height: 315px">
		
		<!-- Home Slider -->
		<div class="home_slider_container" style="left: 0px; top: 0px; height: 171%">
            <%--<div class="owl-carousel owl-theme home_slider">--%>
                <img src="images/blog_3.jpg" style="height: 292px; width: 1100px" />
	</div>
    </div>
    <%--   </div>--%>


    <div class="categories">
		<div class="section_container">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="categories_list_container">
							<ul class="categories_list d-flex flex-row align-items-center justify-content-start">
                               
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</asp:Content>







<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
	
      <form id="form1" runat="server">
    
	
      <div class="products" style="left: 0px; top: 158px; height: 2018px">
		<div class="section_container" style="left: 0px; top: 17px; height: 2193px">
			<div class="container" style="left: 0px; top: -158px; width: 111%">
				<%--<div class="row">
					<div class="col">
						<div class="products_container grid">
							--%>
							<!-- Product -->
						<%--	<div class="product grid-item hot">
								<div class="product_inner">--%>
                              
        <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1" OnSelectedIndexChanged="dlProduct_SelectedIndexChanged"  >
        <ItemTemplate>
            <table class="nav-justified" style="background-color: #EEEEEE; width: 912px; height: 483px;">
                <tr>
                    <td font-size: large; font-style: normal; vertical-align:top rowspan="6" class="text-left" >
                        <asp:Image ID="Image1" runat="server" Height="302px" ImageUrl='<%# "image/"+Eval("IMAGE") %>' Width="257px" />
                    Width="339px" style="margin-left: 46" />
                    </td>
                    <td class="text-center" style="width: 305px; color: #000000; height: 38px;">
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 305px; color: #000000; vertical-align:top; height: 34px;" >
                        <span style="font-size: xx-large">NAME :</span></td>
                    <td class="text-left" style="width: 380px; color: #000000; vertical-align:top; height: 34px;">
                          <asp:Label ID="Label1"  style="font-size: large" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                  </td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 305px; color: #000000; vertical-align:top; height: 34px;"><span style="font-size: xx-large">PRICE:</span></td>
                    <td class="text-left" style="width: 380px; color: #000000; vertical-align:top; height: 34px;">
                        <asp:Label ID="Label2" style="font-size: large" runat ="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 305px; color: #000000; vertical-align:top; height: 81px;"><span style="font-size: xx-large">DESCRIPTION:</span></td>
                    <td class="text-left" style="width: 380px; color: #000000; vertical-align:top; height: 81px;">
                         <asp:Label ID="Label3"  style="font-size: large" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                  
                         </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2" style="color: #000000; vertical-align:top; height: 34px;">
                        <asp:Button ID="btnAddToCart" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Size="15pt" Height="73px" Text="ADD TO CART" Width="218px" OnClick="btnAddToCart_Click1" />
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="width: 305px; color: #000000;">
                        &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
   
     <%--<form id="form1" runat="server">
        <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1"  >
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td font-size: large; font-style: normal; vertical-align:top rowspan="4" >
                        <asp:Image ID="Image1" runat="server" Height="423px" ImageUrl='<%# "image/"+Eval("IMAGE") %>' Width="308px" />
                    </td>
                    <td class="text-center" font-size:="" font-style:="" large;="" normal;="" style="width: 363px" vertical-align:top="">
                        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" font-size:="" font-style:="" large;="" normal;="" style="width: 363px" vertical-align:top="">
                        <asp:Label ID="Label2" runat="server" style="font-size: x-large" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" font-size:="" font-style:="" large;="" normal;="" style="width: 363px" vertical-align:top="">
                        <asp:Label ID="Label3" runat="server" style="font-size: large" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" font-size:="" font-style:="" large;="" normal;="" style="width: 363px" vertical-align:top="">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </form>--%>
    
 </div>
    
</div>
    </div>
      </form>
</asp:Content>

