using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["uid"] = "";
        Session["uname"] = "";
        Session["uemailid"] = "";
        

    }
    protected void CmdSignUp_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    protected void CmdLogin_Click(object sender, EventArgs e)
    {
        //check for login
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        SqlDataAdapter da = new SqlDataAdapter("select * from member_master where m_active=1 and m_emailid='" + TxtEmailID.Text + "' and m_password='" + TxtPassword.Text + "' ", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "member_master");
        if (ds.Tables["member_master"].Rows.Count > 0)
        {
            DataRow R;
            R = ds.Tables["member_master"].Rows[0];
            Session["uid"] = R["m_id"].ToString();
            Session["uname"] = R["m_name"].ToString();
            Session["uemailid"] = R["m_emailid"].ToString();

            //update last login date
            string strIP;
            strIP = Server.MachineName.ToString();
            SqlCommand com = new SqlCommand("update member_master set m_lastlogin_ip='" + strIP + "',m_lastlogin_date2=m_lastlogin_date1, m_lastlogin_date1=getdate() where m_id =" + R["m_id"].ToString(), cn);
            int i;
            i = com.ExecuteNonQuery();

            Response.Redirect("myaccount.aspx");
        }
        else
        {

            ClsMain.CreateMessageAlert(this, "Login fail, Invalid user name/password.", "123");
        }
    }
}
