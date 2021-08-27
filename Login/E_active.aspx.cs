using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_E_active : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GlobalConnection gc = new GlobalConnection();
        if (Request.QueryString["ActivationID"] != null)
        {
            int id = int.Parse(Request.QueryString["ActivationID"]);

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = gc.cnn;
            cmd.CommandText = "Update_v_email";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();


            string str = "Select role from temp_signup where id='" + id + "' ";
            SqlCommand cmd1 = new SqlCommand(str, gc.cnn);
            string role = cmd1.ExecuteScalar().ToString();


            UserDetail ud = new UserDetail();
            DataTable dt = ud.get_signup_Detail(id);
            if (dt.Rows.Count > 0)
            {

                int id1 = int.Parse(dt.Rows[0]["id"].ToString());
                string name = dt.Rows[0]["name"].ToString();
                string email = dt.Rows[0]["email"].ToString();
                if (role.Equals("Candidate"))
                {
                    SqlCommand checkex = new SqlCommand("select c_id from candidate_details where reg_id='"+id1+"' ", gc.cnn);
                    int check1 = int.Parse(checkex.ExecuteNonQuery().ToString());
                    if (check1 == -1)
                    {
                        string str1 = "INSERT INTO candidate_details (reg_id,Name, email) values ('" + id1 + "','" + name + "','" + email + "') ";
                        SqlCommand cmd2 = new SqlCommand(str1, gc.cnn);
                        cmd2.ExecuteNonQuery();
                    }
                    else
                    {
                        Response.Redirect("/Login/login1.aspx");
                    }
                }
                else
                {
                    SqlCommand checkex = new SqlCommand("select 1  from company_detail where reg_id='" + id1 + "' ",gc.cnn);
                    int check1 = int.Parse(checkex.ExecuteNonQuery().ToString());
                    if (check1.Equals(-1))
                    {
                        string str1 = "INSERT INTO company_detail (reg_id,name, email) values ('" + id1 + "','" + name + "','" + email + "') ";
                        SqlCommand cmd2 = new SqlCommand(str1, gc.cnn);
                        cmd2.ExecuteScalar();
                        string message = "User Activated.";
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                    }
                    else
                    {
                        Response.Redirect("/Login/login1.aspx");
                    }
                }
            }   
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/login1.aspx");
    }


}




