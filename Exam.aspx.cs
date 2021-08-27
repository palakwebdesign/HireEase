using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exam : System.Web.UI.Page
{
    Question qe = new Question();
    GlobalConnection gc = new GlobalConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        try { 
       
            int app_id = int.Parse(Session["app_id"].ToString());
        
        if (!this.IsPostBack)
        {
            string ispassed="";
            if (Request.QueryString["p_id"] == null) { Response.Redirect("Login/login1.aspx"); }
            int p_id = int.Parse(Request.QueryString["p_id"]);

            SqlDataAdapter check = new SqlDataAdapter("Select 1 from Application where ispassed is null and app_id='" + app_id + "' ", gc.cnn);           
            DataSet ds = new DataSet();
            check.Fill(ds, "Candidate");
            DataTable dt1 = ds.Tables[0];
            if (dt1.Rows.Count > 0)
            {

                ispassed = dt1.Rows[0][0].ToString();
            }
                if (ispassed.Equals("1"))
            {
                DataTable dt = qe.GetQuestions(p_id);
                if (dt.Rows.Count > 0)
                {

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                string msg = "Your Test is already Submitted";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
                Response.Redirect("index.aspx");
                
            }
        }
    }
        catch (Exception ex) {
            string msg = "Test Already Submitted";
    ClientScript.RegisterClientScriptBlock(GetType(), "alert", "alert('" + msg + "');", true);
            Response.Redirect("Login/login1.aspx");

        }
    }


    string select_answer = "";
    int correct_answer = 0;
    int wrong_answer = 0;
    int c_id;
    int p_id;
    protected void Submit_Click(object sender, EventArgs e)
    {

        int app_id = int.Parse(Session["app_id"].ToString());
        string str = "Select * from Application where app_id='" + app_id + "'"; 

        SqlCommand cmd1 = new SqlCommand(str, gc.cnn);
        SqlDataReader rd = cmd1.ExecuteReader();
        while (rd.Read())
        {
            c_id = Convert.ToInt32(rd["c_id"]);
            p_id = Convert.ToInt32(rd["p_id"]);
        }
        foreach (GridViewRow row in GridView1.Rows)
        {
            string cor_ans = (row.FindControl("cor_ans") as Label).Text;
            RadioButton r1 = row.FindControl("op_1") as RadioButton;
            RadioButton r2 = row.FindControl("op_2") as RadioButton;
            RadioButton r3 = row.FindControl("op_3") as RadioButton;
            RadioButton r4 = row.FindControl("op_4") as RadioButton;

            if (r1.Checked == true)
            {
                select_answer = "Option 4";
            }
            else if (r2.Checked == true)
            {
                select_answer = "Option 4";
            }
            else 
            if (r3.Checked == true)
            {
                select_answer = "Option 4";
            }
            else if (r4.Checked == true)
            {
                select_answer = "Option 4";
            }

            if (select_answer == cor_ans)
            {

                correct_answer = correct_answer + 1;
                
            }
            else
            {
                wrong_answer = wrong_answer + 1;
                
            }

        }
       qe.ifpass(correct_answer,app_id,p_id);
        string msg = "Your have successfully completed the Examination";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);
        Response.Redirect("index.aspx");
        //Label1.Text = correct_answer.ToString();
    }


}