using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClothesMenuControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dlMenu.DataSource = DataAccess.selectQuery("SELECT * FROM  Categories where ID IN(4,5,6,9,10)");
            dlMenu.DataBind();

        }

    }
}