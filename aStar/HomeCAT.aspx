<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="HomeCAT.aspx.cs" Inherits="UserMain" %>

<%@ Register Src="~/LeftMenuControl.ascx" TagPrefix="uc1" TagName="LeftMenuControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="home">
		
		<!-- Home Slider -->
		<div class="home_slider_container">
			<div class="owl-carousel owl-theme home_slider">
				
				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/home_slider_1.jpg)"></div>
					<div class="home_content_container">
						<div class="home_content">
							<div class="home_discount d-flex flex-row align-items-end justify-content-start">
								<div class="home_discount_num">20</div>
								<div class="home_discount_text">Discount on the</div>
							</div>
							<div class="home_title">New Collection</div>
							<div class="button button_1 home_button trans_200"><a href="categories.html">Shop NOW!</a></div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/home_slider_1.jpg)"></div>
					<div class="home_content_container">
						<div class="home_content">
							<div class="home_discount d-flex flex-row align-items-end justify-content-start">
								<div class="home_discount_num">20</div>
								<div class="home_discount_text">Discount on the</div>
							</div>
							<div class="home_title">New Collection</div>
							<div class="button button_1 home_button trans_200"><a href="categories.html">Shop NOW!</a></div>
						</div>
					</div>
				</div>

				<!-- Slide -->
				<div class="owl-item">
					<div class="background_image" style="background-image:url(images/home_slider_1.jpg)"></div>
					<div class="home_content_container">
						<div class="home_content">
							<div class="home_discount d-flex flex-row align-items-end justify-content-start">
								<div class="home_discount_num">20</div>
								<div class="home_discount_text">Discount on the</div>
							</div>
							<div class="home_title">New Collection</div>
							<div class="button button_1 home_button trans_200"><a href="categories.html">Shop NOW!</a></div>
						</div>
					</div>
				</div>

			</div>
				
			<!-- Home Slider Navigation -->
			<div class="home_slider_nav home_slider_prev trans_200"><div class=" d-flex flex-column align-items-center justify-content-center"><img src="images/prev.png" alt=""></div></div>
			<div class="home_slider_nav home_slider_next trans_200"><div class=" d-flex flex-column align-items-center justify-content-center"><img src="images/next.png" alt=""></div></div>

		</div>
	</div>
        
	<!-- Boxes -->
	
	<%--<div class="boxes">
		<div class="section_container">
			<div class="container">
				<div class="row">
					
					<!-- Box -->
					<div class="col-lg-4 box_col">
						<div class="box">
							<div class="box_image"><img src="images/box_1.jpg" alt=""></div>
							<div class="box_title trans_200"><a href="categories.html">summer collection</a></div>
						</div>
					</div>

					<!-- Box -->
					<div class="col-lg-4 box_col">
						<div class="box">
							<div class="box_image"><img src="images/box_2.jpg" alt=""></div>
							<div class="box_title trans_200"><a href="categories.html">eyewear collection</a></div>
						</div>
					</div>

					<!-- Box -->
					<div class="col-lg-4 box_col">
						<div class="box">
							<div class="box_image"><img src="images/box_3.jpg" alt=""></div>
							<div class="box_title trans_200"><a href="categories.html">basic pieces</a></div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>--%>
    
	<!-- LIST OF CATEGORIES -->

	<div class="categories">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #66CCFF; font-size: xx-large">&nbsp;</span><span style="font-size: xx-large"><table style="width:100%;">
            <tr>
               <td class="text-center" style="background-color: #343a40; color: #66FFCC;">Feature Products</td>
            </tr>
        </table>
        </span>
		<div class="section_container" style="left: 0px; top: 28px; height: 27px">
			<div class="container">
			<table>
                            			   							<tr>
                <td class="text-center"<%-- style="background-color: #343a40; color: #66FFCC;"--%>><uc1:LeftMenuControl runat="server" id="LeftMenuControl" />
</td>
            </tr>
        </table>
						</div>
					</div>
				</div>
	
    	<!-- Sorting & Filtering -->
		<%--<div class="products_bar">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="products_bar_content d-flex flex-row align-items-center justify-content-start">
								<div class="product_categories">
									<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
										<li class="active"><a href="#">All</a></li>
										<li><a href="#">Hot Products</a></li>
										<li><a href="#">New Products</a></li>
										<li><a href="#">Sale Products</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>--%>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


   <div class="products">
		<div class="section_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="products_container grid">
							
							<!-- Product -->
							<div class="product grid-item hot">
								<div class="product_inner">
							
                            <asp:DataList ID="dlCategory" runat="server" CssClass="mr-0" RepeatColumns="3" CellSpacing="20" Width="924px" OnSelectedIndexChanged="dlCategory_SelectedIndexChanged">
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
			</div>
		</div>
	</div>
</div>
	</div>


    </asp:Content>



