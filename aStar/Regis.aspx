<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regis.aspx.cs" Inherits="Regis" %>

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
					<h3>Registration Form</h3>
					<div class="form-group">
                                           <asp:TextBox ID="TextBox1" runat="server"  placeholder="Name" class="form-control" ></asp:TextBox>

<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>--%>

                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone No" class="form-control" ></asp:TextBox>
<%--					    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid No" ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Phone No" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="form-wrapper">
	                <asp:TextBox ID="TextBox3" runat="server" placeholder="Password"  class="form-control"></asp:TextBox>
                    </div>
                        
                   
					<div class="form-wrapper">
					    <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Password" class="form-control" ></asp:TextBox>
                    <%--    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Not Match" ForeColor="Red">*</asp:CompareValidator>
                    --%></div>


					<div class="form-wrapper">
						<asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                          <asp:ListItem>Select the Gender</asp:ListItem>
                                          <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                            
                        </asp:DropDownList> 
						<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
			             --%>   </div>
                        
					<div class="form-wrapper">
					   <asp:DropDownList ID="DropDownList2" runat="server" placeholder="Security Questions" class="form-control">
                            <asp:ListItem>Security Question</asp:ListItem>
                          <asp:ListItem>What's your pet name ?</asp:ListItem>
                            <asp:ListItem>What's your favourite film ?</asp:ListItem>
                            <asp:ListItem>What's your favourite car?</asp:ListItem>
                       
                        </asp:DropDownList>

					<%--	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Question" ForeColor="Red">*</asp:RequiredFieldValidator>
                    --%>        </div>
					<div class="form-wrapper" style="height: 71px">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Answer" class="form-control" ></asp:TextBox>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Answer" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
                    </div>

                        					<div class="form-wrapper">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sign Up" Height="42px" Width="127px" class="zmdi zmdi-arrow-right" BackColor="#000333" Font-Style= "Poppins-Regular"  Font-Size ="15px" ForeColor="White" />
                                                    </div>


                    				
                        </div>
				   
				</form>
			</div>
		
		</div>

</body>
</html>
