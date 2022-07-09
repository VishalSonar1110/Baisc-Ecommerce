using System;   
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class PlaceOrder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();


    Cart myCart;
protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();


        if (Session["myCart"] == null)
        {
            Session["myCart"] = new Cart();
        }

        myCart = (Cart)Session["myCart"];

        if (!IsPostBack)
        {

            FillData();
        }

    }



    public void FillData()
    {

        gdShopCart1.DataSource = myCart.Items;
        gdShopCart1.DataBind();


        if (myCart.Items.Count == 0)
        {
            lblGrandTotal.Visible = false;
        }
        else
        {
            lblGrandTotal.Text = string.Format("Grand Total = {0,19:C}", myCart.GrandTotal);
            lblGrandTotal.Visible = true;
        }


        Label3.Text = DateTime.Now.ToShortDateString();
        findorderid();


    }


    //protected void gdShopCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    myCart.Delete(e.RowIndex);
    //    FillData();
    //}

    //protected void gdShopCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    //{
    //    gdShopCart.EditIndex = -1;
    //    FillData();
    //}

    //protected void gdShopCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    TextBox txtQuantity = (TextBox)gdShopCart.Rows[e.RowIndex].Cells[3].Controls[0];
    //    int quantity = Int32.Parse(txtQuantity.Text);
    //    myCart.Update(e.RowIndex, quantity);
    //    gdShopCart.EditIndex = -1;
    //    FillData();

    //}

    //protected void gdShopCart_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    gdShopCart.EditIndex = e.NewEditIndex;
    //    FillData();
    //}




    public void findorderid()
    {
        String pass = "abcdefghijklmnopqrstuvwxyz123456789";
        Random r = new Random();
        char[] mypass = new char[5];
        for (int i = 0; i < 5; i++)
        {
            mypass[i] = pass[(int)(35 * r.NextDouble())];

        }
        String orderid;
        orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

        Label2.Text = orderid;


    }

    public void saveaddress()
    {
        String updatepass = "insert into OrderAddress(OrderId,Address,MobileNo) values('" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
       
        SqlConnection con = new SqlConnection("Data Source = DESKTOP - A7BEIPD; Initial Catalog = aStarProduct; User ID = sa; Password = divya@123; Pooling = False");
        con.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd.CommandText = updatepass;
    
        cmd.ExecuteNonQuery();
        //s.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("P.ID");
        dt.Columns.Add("Product Name");
        dt.Columns.Add("Price");
        dt.Columns.Add("Quantity");
        gdShopCart1.DataSource = dt;
        gdShopCart1.DataBind();



        foreach (GridViewRow gr in gdShopCart1.Rows)
        {
            string sqlquery = "insert into [dbo].[ProductDetails] values (@Pid,@Ppname,@Pprice,@Pquantity)";
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            cmd.Parameters.AddWithValue("@P.ID", gr.Cells[0].Text);
            cmd.Parameters.AddWithValue("@Ppname", gr.Cells[1].Text);
            cmd.Parameters.AddWithValue("@Pprice", gr.Cells[2].Text);
            cmd.Parameters.AddWithValue("@Pquantity", gr.Cells[3].Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Successfully');</script>");


        }




        //dt.Columns.AddRange(new DataColumn[4]
        //{ new DataColumn("P.ID",typeof(int)),
        //   new DataColumn(new DataColumn("Product Name", typeof(string))),
        //   new DataColumn(new DataColumn("Price", typeof(int)),
        //  new DataColumn(new DataColumn("Quantity", typeof(int))
        //});











        // dt = (DataTable)gdShopCart1.DataSource;
        //dt.Columns.Add("P.ID", typeof(int));
        // dt.Columns.Add("Product Name", typeof(string));
        // dt.Columns.Add("Price", typeof(int));
        // dt.Columns.Add("Quantity", typeof(int));
        // foreach (GridViewRow row in gdShopCart1.Rows)
        // {
        //     DataRow dr = dt.NewRow();
        //    dr["P.ID"] = row.Cells[0].Text;
        //     dr["Product Name"] = row.Cells[1].Text;
        //     dr["Price"] = row.Cells[2].Text;
        //     dr["Quantity"] = row.Cells[3].Text;

        // }


        // if (dt.Rows.Count > 0)
        // {
        //     using (SqlBulkCopy sqlbc = new SqlBulkCopy(con))
        //     {
        //         sqlbc.DestinationTableName = "dbo.OrderDetail";
        //    //     sqlbc.ColumnMappings.Add("Pid", "P.ID");
        //         sqlbc.ColumnMappings.Add("Pname", "Product Name");
        //         sqlbc.ColumnMappings.Add("Pprice", "Price");
        //         sqlbc.ColumnMappings.Add("Pquantity", "Quantity");
        //         con.Open();
        //         sqlbc.WriteToServer(dt);
        //         con.Close();

        //     }
        // }

        //for (int i = 0; dt.Rows.Count > i; i++)
        //{

        //    SqlCommand cmd = new SqlCommand("Insert into OrderDetail" + "(Pid,Pname,Pprice,Pquantity) values(dt.Rows[i].ItemArray.GetValue(0),dt.Rows[i].ItemArray.GetValue(1),dt.Rows[i].ItemArray.GetValue(2),dt.Rows[i].ItemArray.GetValue(3)", con);
        //}














        //    for (int i = 0; i <= dt.Rows.Count - 1; i++)
        //    {
        //        String updatepass = "insert into orderdetail(orId,S.no,Pid,Pname,Pname,Pquantity,Dateoforder) values('" + Label2    .Text + "'," + dt.Rows[i]["ID"] + ",'" + dt.Rows[i]["NAME"] + "'," + dt.Rows[i]["PRICE"] + ",'" + Label3.Text + "')";
        //        String mycon1 = "Data Source = DESKTOP - A7BEIPD; Initial Catalog = aStarProduct; User ID = sa; Password = divya@123; Pooling = False";
        //        SqlConnection s = new SqlConnection(mycon1);
        //        s.Open();
        //        SqlCommand cmd1 = new SqlCommand();
        //        cmd1.CommandText = updatepass;
        //        cmd1.Connection = s;
        //        cmd1.ExecuteNonQuery();
        //        s.Close();

        //    }
        //    saveaddress();

        //    Response.Redirect("PlaceSuccessful.aspx");
    }
}