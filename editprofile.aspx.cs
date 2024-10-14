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

public partial class editprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //session time out
        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("default.aspx");
            return;
        }
        if (IsPostBack == true)
        {
            return;

        }

        sp_welcome.InnerText = Session["uname"].ToString();
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        DdlCountry.Items.Clear();
        SqlDataAdapter da = new SqlDataAdapter("select c_name from country_master order by c_name ", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DdlCountry.Items.Add("[--Select Country--]");
        if (dt.Rows.Count > 0)
        {
            int i;
            for (i = 0; i <= dt.Rows.Count - 1; i++)
            {
                DdlCountry.Items.Add(dt.Rows[i]["c_name"].ToString());
            }
        }


        //get the details
        
         
        da = new SqlDataAdapter("select * from member_master where m_id= " + Session["uid"].ToString(), cn);
        DataSet ds = new DataSet();
        ds.Clear();
        da.Fill(ds, "member_master");
        if (ds.Tables["member_master"].Rows.Count > 0)
        {
            DataRow r;
            r = ds.Tables["member_master"].Rows[0];


            TxtEmailID.Text = r["m_emailid"].ToString();
            TxtFirstName.Text = r["m_name"].ToString();

            SqlCommand com = new SqlCommand("select c_name from  country_master where c_code ='" + r["m_country_code"].ToString() + "'", cn);

            DdlCountry.Text  = com.ExecuteScalar().ToString();

            TxtAddress.Text = r["m_address"].ToString();
            TxtCity.Text = r["m_city"].ToString();
            TxtZipCode.Text = r["m_zip"].ToString();


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




        //save the record and redirect to login page

        SqlDataAdapter da = new SqlDataAdapter("select * from member_master where m_id =" + Session["uid"].ToString(), cn);
        
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataSet ds = new DataSet();
        da.Fill(ds, "member_master");


        //new row
        DataRow r;
        r = ds.Tables["member_master"].Rows[0];


        r["m_name"] = TxtFirstName.Text;

        SqlCommand com = new SqlCommand("select c_code from  country_master where c_name ='" + DdlCountry.Text + "'", cn );

        r["m_country_code"] = com.ExecuteScalar().ToString();

        r["m_address"] = TxtAddress.Text;
        r["m_city"] = TxtCity.Text;
        r["m_zip"] = TxtZipCode.Text;

        da.Update(ds, "member_master");

        Session["uname"] = TxtFirstName.Text;


        this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('New changes saved successfully!');" + "window.location.href='myaccount.aspx';" + "<" + "/script>");



    }
    protected void CmdCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("myaccount.aspx");
    }
}
