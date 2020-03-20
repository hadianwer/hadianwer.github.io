using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        MailMessage feedback = new MailMessage();
        feedback.To.Add("hadi.salahat@gmail.com");
        feedback.From = new MailAddress("hadi.salahat@gmail.com");
        feedback.Subject = txtSubject.Text;

        feedback.Body = "Sender Name:" + txtName.Text + "<br><br>Sender Email:" + txtMail.Text + "<br><br>" + txtMessage.Text;
        feedback.IsBodyHtml = true;
        SmtpClient smpt = new SmtpClient();
        smpt.Host = "smtp.gmail.com";
        smpt.Port = 587;
        smpt.EnableSsl = true;
        smpt.Credentials = new
            System.Net.NetworkCredential("hadi.salahat@gmail.com", "10301351");
        smpt.Send(feedback);
        Label1.Text = "thanks for contacting us";
    }
}