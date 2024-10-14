using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        if (TxtEmailID.Text.Length < 3)
        {
            ClsMain.CreateMessageAlert(this, "Enter email id", "123");
            return;
        }

        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        //get the details
        //get the saved data from user_master 

        SqlDataAdapter da = new SqlDataAdapter("select * from member_master where m_emailid= '" + TxtEmailID.Text + "'", cn);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataSet ds = new DataSet();

        ds.Clear();
        da.Fill(ds, "member_master");
        if (ds.Tables["member_master"].Rows.Count > 0)
        {


            DataRow r;
            r = ds.Tables["member_master"].Rows[0];

            string res;

            res = ClassEmail.SendMail("youremailid", TxtEmailID.Text, "Your Password is : " + Convert.ToString(r["m_password"]), "Your Password - Online Eaxmaination");


            this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('Password send successfully');" + "window.location.href='default.aspx';" + "<" + "/script>");
        }
        else
        {
            ClsMain.CreateMessageAlert(this, "Email id not found.", "123");
            return;

        }
    }

    protected void CmdCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
