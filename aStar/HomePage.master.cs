using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //LOGOUT.Visible = false;
        //if (Application["MYVAR1"] == "1")
        //{
        //    LOGOUT.Visible = true;
        //    LOGINHP.Visible = false;
        //}
        //else
        //{
        //    Response.Redirect("HomeCAT.aspx");
        //}

    }

    //protected void LogOutHere(object sender, EventArgs e)
    //{
    //    Application["MYVAR1"] = "0";
    //    Session["user"] = null;
    //    Session["cart"] = null;
    //    LOGOUT.Visible = false;
    //    LOGINHP.Visible = true;
    //}


    protected void logout(object sender, EventArgs e)
    {
        Response.Redirect("");
    }
}


