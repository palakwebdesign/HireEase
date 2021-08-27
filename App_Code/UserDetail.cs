using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserDetail
/// </summary>
public class UserDetail
{
    GlobalConnection gc = new GlobalConnection();

    public DataTable CheckCompany(string email, string pwd)
    {
        string strData = "SELECT Co.co_id, Co.name , Co.email  from  temp_signup S, company_detail Co WHERE Co.reg_id = S.id and S.email ='" + email + "' and S.password='" + pwd + "' ";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Company1");
        return ds.Tables[0];

    }

    public DataTable CheckCandidate(string email, string pwd)
    {
        string strData = "SELECT C.c_id, C.Name , C.email  from   candidate_details C, temp_signup S WHERE  S.id = C.reg_id and S.email ='" + email + "' and S.password ='" + pwd + "'  ";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Candidate");
        return ds.Tables[0];
        
    }

    public DataTable get_signup_Detail(int id)
    {
        string strData = "SELECT id, name, email FROM temp_signup WHERE id = '" + id + "' and v_email = 1 ";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "E_active");
        return ds.Tables[0];
    }

    public DataTable SetDefault(string ID)
    {
        string strData = "Select name,email from company_detail  WHERE co_id=@ID";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Company");
        return ds.Tables[0];
    }

    public void UpdateCompanyProfile(string name, string address, long contact, string email, string company_url, string CEO_name)
    {
        string strData = "UPDATE company_detail SET address=@address,contact=@contact,email=@email,company_url=@company_url,CEO_name=@CEO_name where name=@name";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("name", name);
        cmd.Parameters.AddWithValue("address", address);
        cmd.Parameters.AddWithValue("contact", contact);
        cmd.Parameters.AddWithValue("email", email);
        cmd.Parameters.AddWithValue("company_url", company_url);
        cmd.Parameters.AddWithValue("CEO_name", CEO_name);
        cmd.ExecuteNonQuery();
    }

    //UpdateCandidateProfile(string Name,DateTime DOB, decimal perc_10, decimal perc_12, decimal perc_degree,int Backlogs,string gender,int contact);
    public void UpdateCandidateProfile(string Name, DateTime DOB, decimal perc_10, decimal perc_12, long contact, decimal per_degree, int Backlogs, string gender, int id)
    {
        string strData = "UPDATE candidate_details SET Name=@Name,DOB=@DOB,perc_10=@perc_10,perc_12=@perc_12,contact=@contact,per_degree=@per_degree,Backlogs=@Backlogs,gender=@gender where c_id=@c_id";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("Name", Name);
        cmd.Parameters.AddWithValue("DOB", DOB);
        cmd.Parameters.AddWithValue("contact", contact);
        cmd.Parameters.AddWithValue("perc_10", perc_10);
        cmd.Parameters.AddWithValue("perc_12", perc_12);
        cmd.Parameters.AddWithValue("per_degree", per_degree);
        cmd.Parameters.AddWithValue("Backlogs", Backlogs);
        cmd.Parameters.AddWithValue("gender", gender);
        cmd.Parameters.AddWithValue("c_id", id);
        cmd.ExecuteNonQuery();
    }
    public void PostJob(int co_id, string jobtitle, int score, string jobdesc, decimal percentage, int backlog)
    {
        string strData = "Insert into Post_jobs (co_id,job_title,Score,job_desc,percentage,backlogs) values (@co_id,@jobtitle,@score,@jobdesc,@percentage,@backlog);";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("@co_id", co_id);
        cmd.Parameters.AddWithValue("@jobtitle", jobtitle);
        cmd.Parameters.AddWithValue("@score", score);
        cmd.Parameters.AddWithValue("@jobdesc", jobdesc);
        cmd.Parameters.AddWithValue("@percentage", percentage);
        cmd.Parameters.AddWithValue("@backlog", backlog);

        cmd.ExecuteNonQuery();


    }

}



