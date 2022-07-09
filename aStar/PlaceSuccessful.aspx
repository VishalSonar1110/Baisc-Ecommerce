<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceSuccessful.aspx.cs" Inherits="PlaceSuccessful" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            height: 587px;
            width: 957px;
        }
        .auto-style5 {
            float: right;
        }
        .auto-style6 {
            text-align: center;
        }
        </style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
    <table class="auto-style4">
        <tr>
            <td class="auto-style6" style="height: 23px">
                
                
                 <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click1" Text="Button" Width="115px" />
                
                
                 </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server" Height="544px">
           <table>
                     <tr>
            <td class="auto-style6" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="font-size: xx-large; color: #000000"><span class="auto-style3">Order ID : </span>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3"></asp:Label>
                .
            </td>
            <td class="auto-style6" style="font-size: xx-large; color: #000000">Order Date :
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address :
                <asp:Label ID="Label7" runat="server" CssClass="auto-style3"></asp:Label>
                &nbsp;</td>
            <td class="auto-style7" style="font-size: xx-large; color: #000000">Buyer : aStar pvt ltd</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="2">
                       <asp:GridView ID="gdShopCart1" runat="server" AutoGenerateColumns="False"  Height="145px" Width="945px" BorderColor="White" CellSpacing="5" CssClass="offset-sm-0" Font-Bold="False" Font-Size="Large" ForeColor="#333333">
    <Columns>
        <asp:BoundField DataField="NAME" HeaderText="PRODUCT NAME" ReadOnly="True" />
        <asp:BoundField DataField="PRICE" HeaderText="PRICE" ReadOnly="True" />
        <asp:TemplateField HeaderText="TOTAL">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("PRICE").ToString())*Int32.Parse(Eval("Quanlity").ToString()) %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:HyperLinkField Text="Buy" DataNavigateUrlFields="NAME,PRICE,QUANLITY" DataNavigateUrlFormatString="buypage.aspx?NAME={0}&PRICE={1}&QUANLITY={2}" />
    </Columns>
               <EditRowStyle ForeColor="#666666" Height="5px" />
               <HeaderStyle BackColor="#E5E5E5" BorderColor="White" ForeColor="Black" Font-Bold="True" />
</asp:GridView>
  

            </td>
        </tr>
      </table>
                      </asp:Panel>
            </td>
        </tr>
        

    </table>
                                    
	

    </div>
    </form>
</body>
</html>
