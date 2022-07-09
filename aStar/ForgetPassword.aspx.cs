using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class ForgetPassword : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //string SecurityQuestion, Answer, password;
        // string PhoneNo;
        //PhoneNo = TextBox1.Text;
        // password = TextBox2.Text;
        // SecurityQuestion = DropDownList1.Text;
        // Answer = TextBox3.Text;
        //string q = "update [UserSign] set [password]='" + TextBox2.Text + "' where  phone ='" + TextBox1.Text + "' ";
        //+and securityques = '"+  +"' and answer = '" + TextBox4 + "'"; 
        //cmd = new SqlCommand("select answer from UserDetail where Answer =" + Answer);

        string Answer = TextBox3.Text;

        try { 

            cmd = new SqlCommand("update UserDetail set [password]='" + TextBox3.Text + "' where phone ='" + TextBox1.Text + "' ", con);
            con.Close();
            Response.Write("<script>alert('Successfully Password Reset');</script>");

        }
       catch(Exception ex)
        {
            throw ex;
            Response.Write("<script>alert('your question and answer is not matching');</script>");

            //Label1.Text = "your question and answer is not matching";
            //Label1.Visible = true;
        }

    }
}