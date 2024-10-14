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

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //session time out
        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("default.aspx");
            return;
        }


        TxtEmailID.Text = Session["uemailid"].ToString();
        sp_welcome.InnerText = Session["uname"].ToString();
    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {





        //session time out
        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("default.aspx");
            return;
        }
        



        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        //get the details
        //get the saved data from user_master 

        SqlDataAdapter da = new SqlDataAdapter("select * from member_master where m_id= " + Session["uid"].ToString() + " and m_password='" + TxtPassword.Text + "'", cn);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataSet ds = new DataSet();

        ds.Clear();
        da.Fill(ds, "member_master");
        if (ds.Tables["member_master"].Rows.Count > 0)
        {
            //validation
            //check for password
            if (TxtPassword1.Text.Length < 3)
            {
                ClsMain.CreateMessageAlert(this, "Password should be atleast 4 characters long", "123");
                return;
            }
            if (TxtPassword1.Text != TxtPassword2.Text)
            {
                ClsMain.CreateMessageAlert(this, "Password and confirm password dose not match.", "123");
                return;
            }


            DataRow r;
            r = ds.Tables["member_master"].Rows[0];

            r["m_password"] = TxtPassword1.Text;

            da.Update(ds, "member_master");

            Session["uid"] = "";
            Session["uname"] = "";
            Session["uemailid"] = "";


            this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('Password changed successfully!');" + "window.location.href='default.aspx';" + "<" + "/script>");
        }
        else
        {
            ClsMain.CreateMessageAlert(this, "Invalid old password.", "123");
            return;

        }



    }
    protected void CmdCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("myaccount.aspx");
    }
}
