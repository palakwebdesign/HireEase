using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobApply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        GlobalConnection gc = new GlobalConnection();
        Session["p_id"] = e.CommandArgument.ToString();

        string strData1 = "SELECT * from Application where p_id='"+Session["p_id"]+"' and c_id ='"+Session["c_id"]+"'";
        SqlDataAdapter da = new SqlDataAdapter(strData1, gc.cnn);
        DataSet ds1 = new DataSet();
        da.Fill(ds1, "Company1");
       DataTable dt = ds1.Tables[0];
        if (dt.Rows.Count > 0)
        {
            Label1.Text = "Already Applied";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Select co_id from Post_jobs where p_id='" + Session["p_id"] + "'", gc.cnn);
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            int co_id = int.Parse(ds.Tables[0].Rows[0]["co_id"].ToString());
            int c_id = int.Parse(Session["c_id"].ToString());
            int p_id = int.Parse(Session["p_id"].ToString());
            try
            {
                string strData = "Insert into Application (c_id,co_id,p_id) values (@c_id,@co_id,@p_id);";
                SqlCommand cmd1 = new SqlCommand(strData, gc.cnn);
                cmd1.Parameters.AddWithValue("@c_id", c_id);
                cmd1.Parameters.AddWithValue("@co_id", co_id);
                cmd1.Parameters.AddWithValue("@p_id", p_id);
                cmd1.ExecuteNonQuery();

                string str = "select app_id from Application where c_id='"+c_id+"' and co_id='"+co_id+"' and p_id='"+p_id+"'";
                SqlCommand app_id = new SqlCommand(str, gc.cnn);
            
            int applicationid = int.Parse((app_id.ExecuteScalar()).ToString());

                string str1 = "SELECT C.Name,C.email, Co.name , P.job_title  from  candidate_details C, company_detail Co,Post_jobs P WHERE C.c_id='"+c_id+"' and Co.co_id='"+co_id+"' and P.p_id='"+p_id+"' ";
                SqlDataAdapter da1 = new SqlDataAdapter(str1, gc.cnn);
                DataSet datas = new DataSet();
                da1.Fill(datas, "Mail");
                DataTable dt1 = datas.Tables[0];
                    string candidatename = dt1.Rows[0]["Name"].ToString();
            string email = dt1.Rows[0]["email"].ToString();
            string companyname = dt1.Rows[0]["name"].ToString();
                    string job_title = dt1.Rows[0]["job_title"].ToString() ;
                                

                Label1.Text = "Successfully Applied";

                using (MailMessage mm = new MailMessage("hireease@gmail.com", email))
                {
                    mm.Subject = "Test Link";
                    string body = "Hello " + candidatename + ",";
                    body += "<br /><br />Please click the following link to start the test by company " + companyname + " for the post of " + job_title + ".";
                    body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("/JobApply.aspx", "/Start.aspx?ApplicationID=" + applicationid) + "'>Click here to start the Test</a>";
                    body += "<br /><br />Thanks";
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("hireease@gmail.com", "hireease@123");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                string message = "Exam email has been sent.";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }

    }
}