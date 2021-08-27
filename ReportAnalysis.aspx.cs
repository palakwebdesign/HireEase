using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportAnalysis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ExportToPDF(object sender, EventArgs e)
    {
        //GlobalConnection gc = new GlobalConnection();
        //Response.ContentType = "application/pdf";
        //Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //StringWriter sw = new StringWriter();
        //HtmlTextWriter hw = new HtmlTextWriter(sw);
        //Panel1.RenderControl(hw);
        //StringReader sr = new StringReader(sw.ToString());
        //Document pdfDoc = new Document(PageSize.A4, 10, 10, 0, 0);
        //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        //pdfDoc.Open();
        //htmlparser.Parse(sr);
        //pdfDoc.Close();
        //Response.Write(pdfDoc);
        //Response.End();


        //int co_id = int.Parse(Session["co_id"].ToString());
        //string str1 = "SELECT email  from  company_detail co_id='" + co_id + "' ";
        //SqlDataAdapter da1 = new SqlDataAdapter(str1, gc.cnn);
        //DataSet datas = new DataSet();
        //da1.Fill(datas, "Mail");
        //DataTable dt1 = datas.Tables[0];
        //string email = dt1.Rows[0]["email"].ToString();


        //MailMessage mm = new MailMessage("hireease@gmail.com", email);
        //mm.Subject = "GridView Exported PDF";
        //mm.Body = "GridView Exported PDF Attachment";
        //mm.Attachments.Add(new Attachment(new MemoryStream(bytes), "GridViewPDF.pdf"));
        //mm.IsBodyHtml = true;
        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.EnableSsl = true;
        //NetworkCredential NetworkCred = new NetworkCredential("hireease@gmail.com", "hireease@123");
        //smtp.UseDefaultCredentials = true;
        //smtp.Credentials = NetworkCred;
        //smtp.Port = 587;
        //smtp.Send(mm);
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}