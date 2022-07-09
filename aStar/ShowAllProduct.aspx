﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ShowAllProduct.aspx.vb" Inherits="ShowAllProduct" %>

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
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"  Height="368px" Width="648px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True"  SortExpression="ID" InsertVisible="False"  />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="IMAGE" HeaderText="IMAGE" SortExpression="IMAGE" />
                <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
                <asp:BoundField DataField="IDCAT" HeaderText="IDCAT" SortExpression="IDCAT" />
            </Columns>
        </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnection %>" SelectCommand="SELECT * FROM [Products]"
                          ></asp:SqlDataSource>
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