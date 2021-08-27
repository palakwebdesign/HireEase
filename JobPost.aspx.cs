using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobPost : System.Web.UI.Page
{
    GlobalConnection gc = new GlobalConnection();
    UserDetail ud = new UserDetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void post_Click(object sender, EventArgs e)
    {
       string id = Session["co_id"].ToString();
        string jobtit = jobtitle.Text;
        int score1 = int.Parse(score.Text);

        ud.PostJob(int.Parse(id),jobtitle.Text,int.Parse(score.Text),JobDesc.Text,decimal.Parse(percentage.Text),int.Parse(RadioButtonList1.SelectedValue));

        string msg = "Successfully posted";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
        Response.Redirect("selectcustomization.aspx");
    }
}