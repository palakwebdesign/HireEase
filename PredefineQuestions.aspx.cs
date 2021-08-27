using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PredefineQuestions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        GlobalConnection gc = new GlobalConnection();
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked)
                {
                    string q_id = row.Cells[1].Text;
                    string id = Session["co_id"].ToString();
                    string p_id = PostJobDD1.SelectedValue;
                    string str = "insert into Custom_Question_bank (co_id,q_id,p_id) values ('"+id+"','"+q_id+"','"+p_id+"')";
                    SqlCommand cmd = new SqlCommand(str, gc.cnn);
                    cmd.ExecuteNonQuery();


                }
            }
        }
    }
}