<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td style="width: 155px; height: 21px"></td>
            <td style="height: 21px"></td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="font-size: large; width: 155px"><strong>Order id:
                <asp:Label ID="Label2" runat="server"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 155px">Order Date : <strong>
                <asp:Label ID="Label3" runat="server"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="form1" runat="server">
             <asp:GridView ID="gdShopCart1" runat="server" AutoGenerateColumns="False"   Height="147px" Width="894px" BorderColor="White" CellSpacing="5" CssClass="offset-sm-0" Font-Bold="False" Font-Size="Large" ForeColor="#333333">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="P.ID" Visible="True" />
        <asp:BoundField DataField="NAME" HeaderText="Product Name" ReadOnly="True" />
        <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
        <asp:BoundField DataField="QUANLITY" HeaderText="Quanlity" />
        <asp:TemplateField HeaderText="Total">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("PRICE").ToString())*Int32.Parse(Eval("Quanlity").ToString()) %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
                 <EditRowStyle ForeColor="#666666" Height="5px" />
               <HeaderStyle BackColor="#E5E5E5" BorderColor="White" ForeColor="Black" Font-Bold="True" />   
</asp:GridView>
          
        <table style="width:100%;">
            <tr>
                <td class="footer_logo" style="width: 91px">
                    <asp:Label ID="lblGrandTotal" runat="server" Font-Size="Large" ForeColor="#333333" style="font-size: large" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="footer_logo" style="width: 91px">Address</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="175px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="footer_logo" style="width: 91px">Mobile No</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="173px"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="footer_logo" style="width: 91px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Place Order" Width="176px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>

</asp:Content>

