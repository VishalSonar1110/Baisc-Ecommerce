using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Regis : System.Web.UI.Page
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

        //SqlCommand cmd = new SqlCommand("Insert into UserDetail" + "(name, phone, gender, password, securityques, answer) values(@name, @phone, @gender, @password, @securityques, @answer)", con);

        //cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
        //cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
        //cmd.Parameters.AddWithValue("@password", TextBox3.Text);
        //cmd.Parameters.AddWithValue("@securityques", DropDownList2.SelectedItem.Value);
        //cmd.Parameters.AddWithValue("@answer", TextBox5.Text);
        //cmd.ExecuteNonQuery();
        //Response.Write("<script>alert('Successfully Register');</script>");


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("Insert into UserDetail" + "(name, phone, gender, password, securityques, answer) values(@name, @phone, @gender, @password, @securityques, @answer)", con);

        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
        cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@password", TextBox3.Text);
        cmd.Parameters.AddWithValue("@securityques", DropDownList2.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@answer", TextBox5.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Successfully Register');</script>");

    }
}