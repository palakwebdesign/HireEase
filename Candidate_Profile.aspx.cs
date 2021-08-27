using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Candidate_Profile : System.Web.UI.Page
{
   GlobalConnection gc = new GlobalConnection();
    UserDetail ud = new UserDetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string c_id = Session["c_id"].ToString();
        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + c_id + "');", true);
    }

    protected void candidate_reg_Click(object sender, EventArgs e)
    {
        string c_id = Session["c_id"].ToString();
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + c_id + "');", true);
       ud.UpdateCandidateProfile(name.Text, DateTime.Parse(dob.Text), decimal.Parse(ssc_per.Text), decimal.Parse(hsc_per.Text),long.Parse(C_no.Text), decimal.Parse(deg_per.Text), int.Parse(backlog.Text), gender.SelectedValue, int.Parse(c_id));
        Response.Redirect("ManageCandidateProfile.aspx");
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert(Successfully Updated)", true);
        //ceo.Text = "";
        //co_name.Text = "";
        //address.Text = "";
        //contact.Text = "";
        //email.Text = "";
        //website.Text = "";
    }
}