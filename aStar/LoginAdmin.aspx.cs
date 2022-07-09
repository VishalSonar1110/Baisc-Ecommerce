using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginAdmin : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();


    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string nm = TextBox1.Text.Trim();
        string pwd = TextBox2.Text.Trim();
        SqlCommand cmd = new SqlCommand("select id,password from AdminLog where id='" + TextBox1.Text + "'and password ='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["user"] = nm;
            Response.Write("<script>alert('Successfully Register');</script>");
            Response.Redirect("AdminFunc.aspx");
        }
        else
        {

            Response.Write("<script>alert('Invalid username and password');</script>");
            
        }
        con.Close();


    }
}