<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
		<title></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="colorlib-regform-17/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="colorlib-regform-17/css/style.css">
	
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
	
</head>
<body>

    <div class="wrapper" style="background-image: url('colorlib-regform-17/images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="colorlib-regform-17/images/registration-form-1.jpg" alt="">
				</div>
				<form id="form1" runat="server">
					<div class="auto-style1">
					<h3>add product</h3>

                    <div class="form-wrapper">
	                <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name"  class="form-control"></asp:TextBox>
                    </div>
                
                   
					<div class="form-wrapper">
					    <asp:TextBox ID="TextBox2" runat="server" placeholder="Product Price" class="form-control" ></asp:TextBox>
                   </div>

    
      				<div class="form-wrapper">
	            <asp:FileUpload ID="f1" runat="server" placeholder="Image" class="form-control" ></asp:FileUpload>
                              </div>

    

					<div class="form-wrapper">
						<asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                    <asp:ListItem Value="Select Category">Select Category</asp:ListItem>
                    <asp:ListItem Value="1">Boot</asp:ListItem>
                    <asp:ListItem Value="2">Sneaker</asp:ListItem>
                    <asp:ListItem Value="3">Flip-Flop</asp:ListItem>
                    <asp:ListItem Value="4">Shirts</asp:ListItem>
                    <asp:ListItem Value="5">T-Shirts</asp:ListItem>
                    <asp:ListItem Value="6">Hoodie</asp:ListItem>
                             
                        </asp:DropDownList> 
			                </div>
                        
					<%--<div class="form-wrapper">
					   <asp:DropDownList ID="DropDownList2" runat="server" placeholder="Security Questions" class="form-control">
                            <asp:ListItem>Security Question</asp:ListItem>
                          <asp:ListItem>What's your pet name ?</asp:ListItem>
                            <asp:ListItem>What's your favourite film ?</asp:ListItem>
                            <asp:ListItem>What's your favourite car?</asp:ListItem>
                       
                        </asp:DropDownList>

					<%--	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Question" ForeColor="Red">*</asp:RequiredFieldValidator>
                    --%>        </div>
					<div class="form-wrapper" style="height: 71px">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Description" class="form-control" ></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Answer" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                    </div>

                        					<div class="form-wrapper">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sign Up" Height="42px" Width="127px" class="zmdi zmdi-arrow-right" BackColor="#000333" Font-Style= "Poppins-Regular"  Font-Size ="15px" ForeColor="White" />
                                                    </div>


                    				
                        </div>
				   
				</form>
			</div>
		
	

</body>
</html>
