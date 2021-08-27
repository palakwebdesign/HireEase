using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["Candidate"] != null)
            {
                lblWelcome.Text += Session["Candidate"].ToString();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}
