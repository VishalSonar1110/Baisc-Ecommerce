<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
	<head runat="server">
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="colorlib-regform-17/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="colorlib-regform-17/css/style.css">
	    <style type="text/css">
            .auto-style1 {
                position: relative;
                text-align: center;
            }
            .auto-style2 {
                text-align: center;
            }
        </style>
	</head>

	<body>
        <div class="wrapper" style="background-image: url('imagess/micheile-henderson-FpPcoOAk5PI-unsplash.jpg');">
			<div class="inner">
				<div class="image-holder">
                    <img src="imagess/micheile-henderson-FpPcoOAk5PI-unsplash.jpg" />
                </div>
				<form action="" runat="server">
					<div class="auto-style2">
					<h3>CHANGE PASSWORD</h3>
				  <div class="form-wrapper">
	                <asp:TextBox ID="TextBox1" runat="server" placeholder="Phone No"  class="form-control" required="required"></asp:TextBox>
                    </div>
                        
                   	<div class="form-wrapper">
					   <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Security Questions" class="form-control" required="required">
                            <asp:ListItem>Security Question</asp:ListItem>
                          <asp:ListItem>What's your pet name ?</asp:ListItem>
                            <asp:ListItem>What's your favourite film ?</asp:ListItem>
                            <asp:ListItem>What's your favourite car?</asp:ListItem>
                       
                        </asp:DropDownList>
                    </div>
				


	        	<div class="form-wrapper">
	                <asp:TextBox ID="TextBox2" runat="server" placeholder="Answer"  class="form-control" required="required"></asp:TextBox>
                    </div>
                 		
                    
            	<div class="form-wrapper">
	                <asp:TextBox ID="TextBox3" runat="server" placeholder="New Password"  class="form-control" Text-Type="Password" TextMode="Password" required="required"></asp:TextBox>
                    </div>
                      
                        
                    
                       
					
                        					<div class="auto-style1">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Sign Up" CssClass="auto-style4" Height="54px" Width="168px" class="zmdi zmdi-arrow-right" BackColor="Black" Font-Style= "Poppins-Regular"  Font-Size ="15px" ForeColor="White" BorderColor="Black" />
                                                    </div>

                                                <br />

                                                <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/Login.aspx" CssClass="auto-style4" style="font-size: large">Login</asp:HyperLink>                                                    
                    </div>
            </div>


				</form>
			</div>
			</div>
        			<


	
	</body>

</html>