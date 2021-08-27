using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_profile : System.Web.UI.Page
{
    GlobalConnection gc = new GlobalConnection();
    UserDetail ud = new UserDetail();
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Session["co_id"].ToString();
        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + id + "');", true);
        if (Session["co_id"] != null)
        {

            
            string query = "Select name,email from company_detail  WHERE co_id='" + int.Parse(id) + "'";
            SqlCommand cmd = new SqlCommand(query, gc.cnn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                co_name.Text = (sdr["name"].ToString());
                email.Text = (sdr["email"].ToString());
            }
            
        }
        else { Response.Redirect("Login/login1.aspx"); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ud.UpdateCompanyProfile(co_name.Text,address.Text,long.Parse(contact.Text),email.Text,website.Text,ceo.Text);
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert(Successfully Updated);", true);
        Response.Redirect("ManageCompanyProfile.aspx");
    }
}