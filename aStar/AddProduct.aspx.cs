using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddProduct : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    string a, b;

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {

        f1.SaveAs(Request.PhysicalApplicationPath + "./Image/" + a + f1.FileName.ToString());

        b = "images/" + a + f1.FileName.ToString();



        Random rnd = new Random();

        SqlCommand cmd = new SqlCommand("Insert into Products" + "(NAME , IMAGE , PRICE , DESCRIPTION,  IDCAT) values(@NAME , @IMAGE , @PRICE , @DESCRIPTION,  @IDCAT)", con);
        cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
        cmd.Parameters.AddWithValue("@IMAGE", b.ToString());
        cmd.Parameters.AddWithValue("@PRICE", TextBox2.Text);
        cmd.Parameters.AddWithValue("@DESCRIPTION", TextBox5.Text);
        cmd.Parameters.AddWithValue("@IDCAT", DropDownList1.SelectedItem.Value);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Product Successfully Added');</script>");

    }
}