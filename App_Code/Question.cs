using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for Question
/// </summary>
public class Question
{
    GlobalConnection gc = new GlobalConnection();

    public void addQuestion(int id, string Quest, string op_1, string op_2, string op_3, string op_4, string cor_ans, int S_id, int p_id)
    {
        string strData = "Insert into Questions (co_id,Ques,op_1,op_2,op_3,op_4,cor_ans,S_id,p_id) values (@co_id,@Quest,@op_1,@op_2,@op_3,@op_4,@cor_ans,@S_id,@p_id)";
        SqlCommand cmd = new SqlCommand(strData, gc.cnn);
        cmd.Parameters.AddWithValue("@co_id", id);
        cmd.Parameters.AddWithValue("@Quest", Quest);
        cmd.Parameters.AddWithValue("@op_1", op_1);
        cmd.Parameters.AddWithValue("@op_2", op_2);
        cmd.Parameters.AddWithValue("@op_3", op_3);
        cmd.Parameters.AddWithValue("@op_4", op_4);
        cmd.Parameters.AddWithValue("@cor_ans", cor_ans);
        cmd.Parameters.AddWithValue("@S_id", S_id);
        cmd.Parameters.AddWithValue("@p_id", p_id);
        cmd.ExecuteReader();
    }

    public DataTable GetQuestions(int p_id)
    {
        string strData = "select q_id,Ques,op_1,op_2,op_3,op_4,cor_ans from Questions where q_id in (Select top 20 q_id from Custom_Question_bank where p_id='" + p_id + "') ORDER By NewID() ";
        SqlDataAdapter da = new SqlDataAdapter(strData, gc.cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "Questions");
        return ds.Tables[0];
    }
    public void ifpass(int correct_answers,int app_id,int p_id)
    {
        SqlCommand cmd = new SqlCommand("Select percentage from Post_jobs where p_id='"+p_id+"' ",gc.cnn);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            float passcriteria = float.Parse(rd["percentage"].ToString());
            float corcriteria = float.Parse(((correct_answers / 10) * 100).ToString());
            if (corcriteria >= passcriteria)
            {
                SqlCommand cmd1 = new SqlCommand("Update Application set ispassed='Pass' where app_id='" + app_id + "' ", gc.cnn);
                cmd1.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("Update Application set ispassed='Fail' where app_id='" + app_id + "' ", gc.cnn);
                cmd1.ExecuteNonQuery();
            }
        }
    }
}
