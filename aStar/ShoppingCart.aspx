<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="home" style="left: 0px; top: 0px; height: 315px">
		
		<!-- Home Slider -->
		<div class="home_slider_container" style="left: 0px; top: 0px; height: 171%">
            <%--<div class="owl-carousel owl-theme home_slider">--%>
                <img src="images/blog_2.jpg" style="height: 292px; width: 1100px" />
	</div>
    </div>
    <%--   </div>--%>

</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            
    
      <div class="products" style="left: 0px; top: 158px; height: 2018px">
		<div class="section_container" style="left: 0px; top: 17px; height: 2193px">
			<div class="container" style="left: 0px; top: -158px; width: 111%">
	
     <form id="form1" runat="server">
             
           <div class="text-center">
             <asp:GridView ID="gdShopCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gdShopCart_RowCancelingEdit" OnRowDeleting="gdShopCart_RowDeleting" OnRowEditing="gdShopCart_RowEditing" OnRowUpdating="gdShopCart_RowUpdating"  Height="147px" Width="894px" BorderColor="White" CellSpacing="5" CssClass="offset-sm-0" Font-Bold="False" Font-Size="Large" ForeColor="#333333">
    <Columns>
        
        <asp:BoundField DataField="NAME" HeaderText="Product Name" ReadOnly="True" />
        <asp:ImageField DataImageUrlField="IMAGE" DataImageUrlFormatString="~\Image\{0}" HeaderText="Image" ReadOnly="True" ControlStyle-Height="200px" ControlStyle-Width="200px">
<ControlStyle Height="200px" Width="200px"></ControlStyle>

            <ItemStyle Height="2px" Width="2px" />
        </asp:ImageField>
        <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="QUANLITY" HeaderText="Quanlity" />
        <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("PRICE").ToString())*Int32.Parse(Eval("Quanlity").ToString()) %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" />
        <asp:CommandField ShowDeleteButton="True" />
        <asp:HyperLinkField Text="Buy" DataNavigateUrlFields="NAME,PRICE,QUANLITY" DataNavigateUrlFormatString="buypage.aspx?NAME={0}&PRICE={1}&QUANLITY={2}" />
    </Columns>
                 <EditRowStyle ForeColor="#666666" Height="5px" />
               <HeaderStyle BackColor="#E5E5E5" BorderColor="White" ForeColor="Black" Font-Bold="True" />   
</asp:GridView>
             
  
  
  
                 </div>
  
  
                <table style="width:100%;">
                    <tr>
                        <td style="width: 515px">&nbsp;</td>
                        <td style="width: 579px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 515px" class="text-center">&nbsp;<strong><asp:Label ID="lblGrandTotal" runat="server" Visible="False" Font-Size="Large" ForeColor="#333333" style="font-size: large"></asp:Label> </strong> </td>
                        <td style="width: 579px" class="text-center">
            <%--                <asp:Button ID="Button1" runat="server" PostBackUrl="~/PlaceSuccessful.aspx" Font-Bold="True" Font-Size="Large" Height="39px" Text="CHECKOUT" Width="213px" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            --%>            
                            <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click1" Text="Button" Width="123px" />
                        </td>
                        <td rowspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 515px">&nbsp;</td>
                        <td style="width: 579px">&nbsp;</td>
                    </tr>
           </table>
  
  
                <%-- <asp:Label ID="lblGrandTotal" runat="server" Visible="False"></asp:Label>--%>
             </form>
  </div>
            </div>
          </div>
</asp:Content>

