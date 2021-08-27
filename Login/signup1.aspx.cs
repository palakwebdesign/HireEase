using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_signup1 : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                //}
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void btn_register_Click(object sender, EventArgs e)
    {
        int id;
        if (checkemail() == true)
            {
                string msg = "Your Email Already Registered with Us";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + msg + "');", true);

            }
            else
            {
            
                    SqlConnection con = new SqlConnection(strConnString);
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    string email = txt_email.Text;
                    cmd.CommandText = "Insert into temp_signup (name,email,password,role) values(@name,@email,@password,@role)";
                  cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("name", txtname.Text);
                    cmd.Parameters.AddWithValue("email", email);
                    cmd.Parameters.AddWithValue("password", txtpassword.Text);
                    cmd.Parameters.AddWithValue("role", rbt_role.SelectedValue);

                    if (con.State == ConnectionState.Closed)
                        con.Open();
            cmd.ExecuteNonQuery();
            SqlCommand cmd1;
            //cmd1.Connection = con;
            //cmd1.CommandType = CommandType.Text;
            cmd1 = new SqlCommand("select id from temp_signup where name = '"+txtname.Text+"' and email ='"+email+"'",con);

            id = (int)cmd1.ExecuteScalar();
            con.Close();
                
                string message = "Registration successful. Activation email has been sent.";
                SendActivationEmail(id);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }
        
    }

    private void SendActivationEmail(int id)
    {
       
        
        using (MailMessage mm = new MailMessage("hireease@gmail.com", txt_email.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + txtname.Text.Trim() + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("/Login/signup1.aspx","/Login/E_active.aspx?ActivationID=" + id) + "'>Click here to activate your account.</a>";
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
        }
    }



    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        
        String myquery = "Select * from temp_signup where email='" + txt_email.Text + "'";
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }

}