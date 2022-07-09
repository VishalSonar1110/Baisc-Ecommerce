using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{

    Cart myCart;

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    public int n;


    protected void Page_Load(object sender, EventArgs e)
    {
        Application["MYVAR"] = "0";
        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        string nm = TextBox1.Text.Trim();
        string pwd = TextBox2.Text.Trim();
        SqlCommand cmd = new SqlCommand("select Phone,Password from UserDetail where phone='" + TextBox1.Text + "'and password ='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Application["MYVAR1"] = "1";
            Session["user"] = nm;
            myCart = (Cart)Session["myCart"];
            Response.Write("<script>alert('Successfully Register');</script>");
            Response.Redirect("HomeCAT.aspx");
        }
        else
        {
            
            n = 0;
            Response.Write("<script>alert('Invalid username and password');</script>");
            Application["MYVAR1"] = "0";

        }
        con.Close();

    }
}