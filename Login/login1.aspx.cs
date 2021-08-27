using Microsoft.AspNet.SignalR.Messaging;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_login1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_register_Click(object sender, EventArgs e)
    {
        if ((txt_email.Text).Equals("admin@admin.com") && (txtpassword).Equals("admin"))
        {
            Response.Redirect("Admin.aspx");
        }
        UserDetail ud = new UserDetail();
        if (rbt_role.SelectedValue.Equals("Company"))
        {

            DataTable dt = ud.CheckCompany(txt_email.Text, txtpassword.Text);

            if (dt.Rows.Count > 0)
            {

                Session["Company"] = dt.Rows[0]["name"];
                Session["co_id"] = dt.Rows[0]["co_id"];
                Session["co_email"] = txt_email.Text;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Session["co_id"].ToString() + "');", true);
                Response.Redirect("/ManageCompanyProfile.aspx");
            }
            else
            {
                string message = "Invalid User or Password";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        else if (rbt_role.SelectedValue.Equals("Candidate")) {
            DataTable dt = ud.CheckCandidate(txt_email.Text, txtpassword.Text);

            if (dt.Rows.Count > 0)
            {

                Session["Candidate"] = dt.Rows[0]["Name"];
                Session["c_id"] = dt.Rows[0]["c_id"];
                Session["c_email"] = txt_email.Text;
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Session["c_id"].ToString() + "');", true);
                Response.Redirect("/ManageCandidateProfile.aspx");
            }
            else
            {
                string message = "Invalid User or Password";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }
    }
}