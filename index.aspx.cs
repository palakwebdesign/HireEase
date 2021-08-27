using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["USER_ID"] != null)
        //{
        //    Label1.Text = Session["USER_ID"].ToString();
        //}
        //else
        //{
        //    Response.Redirect("index.aspx");
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Session.Remove("USER_ID");
        //Session.RemoveAll();
    }
}