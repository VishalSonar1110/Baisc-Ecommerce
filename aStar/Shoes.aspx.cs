using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shoes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS where IDCAT IN(1,2,3,7,8) ");
        dlCategory.DataBind();

        string IDCAT = Request.QueryString["IDCAT"];
        if (IDCAT != null)
        {
            dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE IDCAT=" + IDCAT);
            dlCategory.DataBind();
        }

    }
}