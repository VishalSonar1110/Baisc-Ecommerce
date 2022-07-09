using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SearchEngine : System.Web.UI.Page
{

    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=DESKTOP-A7BEIPD;Initial Catalog=aStarProduct;User ID=sa;Password=divya@123;Pooling=False";
        con.Open();
        dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS where IDCAT IN(1,2,5,7,3) ");
        dlCategory.DataBind();

        string product = Request.QueryString["SearchPro"];

        if (product != null)
        {


            dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE NAME LIKE \'%" + product + "%\'");
            dlCategory.DataBind();

        }

        showData();

    }
    
    public void showData()
    {


    }

}