<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminFunc.aspx.cs" Inherits="AdminFunc" %>


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
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 0px;
            height: 37px;
        }
        .auto-style3 {
            position: relative;
            left: 0px;
            top: 26px;
            height: 18px;
        }
    </style>
	
</head>
<body>

    <div class="wrapper" style="background-image: url('colorlib-regform-17/images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
                	<img src="bgImage/woman-wearing-white-crew-neck-t-shirt-with-black-canon-dslr-1549200.jpg" alt="">
				</div>
				<form id="form1" runat="server">
					<div class="auto-style1">
					<h3>WELCOME ADMIN</h3>
					<div class="form-wrapper">
                        <asp:Button ID="Button1" runat="server" Text="ADD PRODUCT"   Height="44px" Width="228px" class="zmdi zmdi-arrow-right" BackColor="#000333" Font-Style= "Poppins-Regular"  Font-Size ="20px" ForeColor="White" BorderColor="#003399" OnClick="Button1_Click"/>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>--%>

                    </div>

                    <div class="auto-style2">
                         </div>
                        
                   
					<div class="form-wrapper">
					    
                        <asp:Button ID="Button2" runat="server" Text="DELETE & EDIT" Height="44px" Width="228px" class="zmdi zmdi-arrow-right" BackColor="#000333" Font-Style= "Poppins-Regular"  Font-Size ="20px" ForeColor="White" OnClick="Button2_Click"/>
					    
                        </div>


					<div class="form-wrapper">
										    
                        
                        	<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
			             --%>   </div>
                        
					<div class="auto-style3">
					 <asp:Button ID="Button3" runat="server" Text="ORDER DETAILS"  Height="44px" Width="228px" class="zmdi zmdi-arrow-right" BackColor="#000333" Font-Style= "Poppins-Regular"  Font-Size ="20px" ForeColor="White"/>
					<%--	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Question" ForeColor="Red">*</asp:RequiredFieldValidator>
                    --%>        </div>
					<div class="form-wrapper" style="height: 71px">
                    </div>

                        			
                        </div>
				   
				</form>
			</div>
		
		</div>

</body>
</html>
