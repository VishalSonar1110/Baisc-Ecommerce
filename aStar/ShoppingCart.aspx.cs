using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ShoppingCart : System.Web.UI.Page
{

    Cart myCart;
    protected void Page_Load(object sender, EventArgs e)
    {
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

        gdShopCart.DataSource = myCart.Items;
        gdShopCart.DataBind();


        if (myCart.Items.Count == 0)
        {
            lblGrandTotal.Visible = false;
        }
        else
        {
            lblGrandTotal.Text = string.Format("Grand Total = {0,19:C}", myCart.GrandTotal);
            lblGrandTotal.Visible = true;
        }
    }
    protected void gdShopCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        myCart.Delete(e.RowIndex);
        FillData();
    }

    protected void gdShopCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdShopCart.EditIndex = -1;
        FillData();
    }

    protected void gdShopCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)gdShopCart.Rows[e.RowIndex].Cells[3].Controls[0];
        int quantity = Int32.Parse(txtQuantity.Text);
        myCart.Update(e.RowIndex, quantity);
        gdShopCart.EditIndex = -1;
        FillData();

    }

    protected void gdShopCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gdShopCart.EditIndex = e.NewEditIndex;
        FillData();
    }


   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //if (Application["MYVAR1"] == "1")
        //{
        //    Response.Redirect("PlaceSuccessful.aspx");
        //}
        //else
        //{

        //    Response.Redirect("login");
        //}

        Response.Redirect("PlaceOrder.aspx");

       













        //foreach (GridViewRow row in gdShopCart.Rows)
        //{
        //        if(row.RowType==DataControlRowType.DataRow)
        //    {
        //        CheckBox CB1 = (row.Cells[0].FindControl("CB1") as CheckBox);
        //        if(CB1.Checked)
        //        {
        //            isAnyRowSelected = true;
        //            break;
        //        }
        //    }

        //}
        //if (isAnyRowSelected)
        //{
        //    Server.Transfer("PlaceSuccessful.aspx");
        //}
        //else
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "alert","alert('Please select the product.')",true);
        //}

    }




   // protected void Button1_Click1(object sender, EventArgs e)
//    {
//        DataTable dtfk = new DataTable();
//        dtfk.Columns.AddRange(new DataColumn[1] { new DataColumn("Product Name")});
//        dtfk.Columns.AddRange(new DataColumn[1] { new DataColumn("Price") });



//        foreach (GridViewRow gvrow in gdShopCart.Rows)
//        {

//            if (gvrow.RowType == DataControlRowType.DataRow)
//            {
//                //     CheckBox check = row.FindControl("checkRecord") as CheckBox;
//                CheckBox chSelect = (gvrow.Cells[0].FindControl("checkRecord") as CheckBox);

//                if (chSelect.Checked)
//                {
//                    string ProductNAME = gvrow.Cells[1].Text;
//                }
//            }

//        }
//        Session.Add("dtfk", dtfk);
//;        Response.Redirect("PlaceOrder.aspx");

//    }
}