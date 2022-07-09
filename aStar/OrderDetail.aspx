<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderDetail.aspx.cs" Inherits="OrderDetail" %>

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
	
    </head>
<body>
    <form runat="server">
    <div class="wrapper" style="background-image: url('colorlib-regform-17/images/bg-registration-form-1.jpg');">
			<div class="inner">
					 <table style="width:100%;">
            <tr>
                <td colspan="2">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="S.no" DataSourceID="SqlDataSource2" Height="211px" Width="620px"  >
            <Columns>
                <asp:BoundField DataField="orId" HeaderText="Order ID"  SortExpression="orId"  />
                <asp:BoundField DataField="S.no" HeaderText="S.no" SortExpression="S.no" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Pid" HeaderText="Product ID" SortExpression="Pid" />
                <asp:BoundField DataField="Pname" HeaderText="Product Name" SortExpression="Pname" />
                <asp:BoundField DataField="Pprice" HeaderText="Product Price" SortExpression="Pprice" />
                <asp:BoundField DataField="Pquantity" HeaderText="Quantity" SortExpression="Pquantity" />
                <asp:BoundField DataField="DateOfOrder" HeaderText="DateOfOrder" SortExpression="DateOfOrder" />
                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            </Columns>
        </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" SelectCommand="SELECT * FROM [OrderDetail]"></asp:SqlDataSource>
                </td>
            </tr>
            <%--<tr>
                <td class="auto-style4">Udate Product (Enter Product Id):</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Delete Product (Enter Product Id):</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
            </tr>--%>
        </table>

            
            </div>
		</div>
</form>
</body>
</html>
