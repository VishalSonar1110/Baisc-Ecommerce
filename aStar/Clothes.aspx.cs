using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clothes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS where IDCAT IN(4,5,6,9,10) ");
        dlCategory.DataBind();

        string IDCAT = Request.QueryString["IDCAT"];
        if (IDCAT != null)
        {
            dlCategory.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE IDCAT=" + IDCAT);
            dlCategory.DataBind();
        }

    }
}
