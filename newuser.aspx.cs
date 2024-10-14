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

public partial class newuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == true)
        {
            return;
        }


        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        DdlCountry.Items.Clear();
        SqlDataAdapter da = new SqlDataAdapter("select c_name from country_master order by c_name ", cn);
        DataTable dt=new DataTable() ;
        da.Fill(dt);
        DdlCountry.Items.Add("[--Select Country--]");
        if (dt.Rows.Count > 0)
        {
            int i;
            for (i = 0; i <= dt.Rows.Count - 1; i++)
            {
                DdlCountry.Items.Add(dt.Rows[i]["c_name"].ToString() );
            }
        }

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        // validation
        if (TxtEmailID.Text == "")
        {
            ClsMain.CreateMessageAlert(this, "Email ID cannot be blank", "123");
            return;
        }
        //check for first name
        if (TxtFirstName.Text == "")
        {
            ClsMain.CreateMessageAlert(this, "First name cannot be blank", "123");
            return;
        }

        //check for country
        if (DdlCountry.Text == "[--Select Country--]")
        {
            ClsMain.CreateMessageAlert(this, "Select country from list.", "123");
            return;
        }


        //open connection
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        SqlCommand com = new SqlCommand("select count(*) from member_master where m_emailid ='" + TxtEmailID.Text + "'", cn);
        int i;
        i = int.Parse(com.ExecuteScalar().ToString());
        if (i > 0)
        {
            ClsMain.CreateMessageAlert(this, "Email ID already used, enter diffrent email id.", "123");
            return;
        }

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


        //save the record and redirect to login page
        SqlTransaction tr;
        tr = cn.BeginTransaction();
        SqlDataAdapter da = new SqlDataAdapter("select * from member_master where 1=2", cn);
        da.SelectCommand.Transaction = tr;
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataSet ds = new DataSet();
        da.Fill(ds, "member_master");

        //get the new user_id
        int lastid;
        com = new SqlCommand("select max(m_id) from member_master ", cn, tr);
        lastid = int.Parse(com.ExecuteScalar().ToString());

        //new row
        DataRow r;
        r = ds.Tables["member_master"].NewRow();
        r["m_id"] = lastid + 1;
        r["m_emailid"] = TxtEmailID.Text;
        r["m_password"] = TxtPassword1.Text;

        r["m_name"] = TxtFirstName.Text;

        com = new SqlCommand("select c_code from  country_master where c_name ='" + DdlCountry.Text + "'", cn, tr);

        r["m_country_code"] = com.ExecuteScalar().ToString();

        r["m_address"] = TxtAddress.Text;
        r["m_city"] = TxtCity.Text;
        r["m_zip"] = TxtZipCode.Text;

        r["m_active"] = 1;
        r["m_createdate"] = System.DateTime.Now.ToString();




        ds.Tables["member_master"].Rows.Add(r);
        da.Update(ds, "member_master");

        Session["uid"] = lastid + 1;
        Session["uname"] = TxtFirstName.Text ;
        Session["uemailid"] = TxtEmailID.Text ;

        //update last login date
        string strIP;
        strIP = Server.MachineName.ToString();
        com = new SqlCommand("update member_master set m_lastlogin_ip='" + strIP + "',m_lastlogin_date2=m_lastlogin_date1, m_lastlogin_date1=getdate() where m_id =" + lastid + 1, cn,tr);
        
        i = com.ExecuteNonQuery();

        tr.Commit();

        this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('New user added successfully!');" + "window.location.href='myaccount.aspx';" + "<" + "/script>");



    }
}
