using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shoes : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        //{
        //    string id = "1";
        //    string ids = "2";
        //    string idss = "3";
            dlMenu.DataSource = DataAccess.selectQuery("SELECT * FROM  Categories where ID IN(1,2,3,7,8)");
            dlMenu.DataBind();

        }
    }
