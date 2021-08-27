using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class selectcustomization : System.Web.UI.Page
{
    GlobalConnection gc = new GlobalConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddQuestions_Click(object sender, EventArgs e)
    {
        string id = Session["co_id"].ToString();

        if (Rbt_Ques.SelectedValue.Equals("C1"))
        {
            Response.Redirect("AddQuestions.aspx");
        }
        else if (Rbt_Ques.SelectedValue.Equals("P1"))
        {
            Response.Redirect("PredefineQuestions.aspx");
        }
        
        
    }

    protected void PostJobDD1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}