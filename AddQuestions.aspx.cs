using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddQuestions : System.Web.UI.Page
{
    GlobalConnection gc = new GlobalConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void Add_Click(object sender, EventArgs e)
    {
        string id = Session["co_id"].ToString();
        Question qe = new Question();
        //Question.cs file has the function addQuestion which adds customize Questions from the company for that job
        qe.addQuestion(int.Parse(id),Quest.Text,Op_1.Text,Op_2.Text,Op_3.Text,Op_4.Text,Correct_ans.SelectedValue,int.Parse(Section_Select.SelectedValue),int.Parse(JobPost.SelectedValue));

        string msg = "Questions set Successfully";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
        Response.Redirect("selectcustomization.aspx");
    }
} 