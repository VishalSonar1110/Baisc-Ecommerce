using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


public partial class PlaceSuccessful : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //    if (this.Page.PreviousPage != null)
        //    {
        //        GridView gdShopCart = (GridView)this.Page.PreviousPage.FindControl("gdShopCart");

        //        DataTable dt = new DataTable();
        //        dt.Columns.Add("NAME");
        //        dt.Columns.Add("PRICE");
        //        dt.Columns.Add("TOTAL");
        //        dt.AcceptChanges();

        //        for (int i = 0; i < gdShopCart.Rows.Count; i++)
        //        {
        //            GridViewRow row = gdShopCart.Rows[i];
        //            CheckBox chkbox = (CheckBox)row.Cells[0].FindControl("CB1");
        //            if (chkbox.Checked)
        //            {
        //                string id = row.Cells[1].Text;
        //                string name = row.Cells[2].Text;
        //                string total = row.Cells[3].Text; 
        //                dt.Rows.Add(id, name, total);

        //            }
        //        }

        //        // bind the datatable to GridView2
        //        gdShopCart1.DataSource = dt;
        //        gdShopCart1.DataBind();
        //    }
        //}


        Label3.Text = Request.QueryString["orderid"];
        Panel1.Visible = true;
        //findorderdate(Label5.Text);
        findaddress(Label5.Text);
        showgrid(Label5.Text);




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        exportpdf();
    }

    private void exportpdf()
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }
    //private void findorderdate(String Orderid)
    //{
    //    String mycon = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
    //    String myquery = "Select * from Products where ID ='" + Orderid + "'";
    //    SqlConnection con = new SqlConnection(mycon);
    //    SqlCommand cmd = new SqlCommand();
    //    cmd.CommandText = myquery;
    //    cmd.Connection = con;
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    da.SelectCommand = cmd;
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {

    //        Label5.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();

    //    }

    //    con.Close();
    //}
    private void findaddress(String Orderid)
    {
        String mycon = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        String myquery = "Select * from Products where ID ='" + Orderid + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            Label7.Text = ds.Tables[0].Rows[0]["address"].ToString();

        }

        con.Close();
    }
    private void showgrid(String orderid)
    {
        DataTable dt = new DataTable();
        DataRow dr;


        dt.Columns.Add("ID");
        dt.Columns.Add("NAME");
        dt.Columns.Add("PRICE");
        dt.Columns.Add("TOTAL");
        String mycon = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from Products where ID ='" + orderid + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        int totalrows = ds.Tables[0].Rows.Count;
        int i = 0;
        int grandtotal = 0;
        while (i < totalrows)
        {
            dr = dt.NewRow();

            dr["ID"] = ds.Tables[0].Rows[i]["ID"].ToString();
            dr["NAME"] = ds.Tables[0].Rows[i]["NAME"].ToString();
            dr["PRICE"] = ds.Tables[0].Rows[i]["PRICE"].ToString();
            int price = Convert.ToInt16(ds.Tables[0].Rows[i]["PRICE"].ToString());
            dt.Rows.Add(dr);
            i = i + 1;
        }
        gdShopCart1.DataSource = dt;
        gdShopCart1.DataBind();

        Label7.Text = grandtotal.ToString();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        exportpdf();
    }
}