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

public partial class myaccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //session time out
        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("default.aspx");
            return;

        }
        sp_welcome.InnerText = Session["uname"].ToString();

        //query to get user deatils
        String StrQr = "SELECT  * from member_master where m_id = " + Session["uid"].ToString();
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(StrQr, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "member_master");
        if (ds.Tables["member_master"].Rows.Count > 0)
        {
            DataRow r;
            r = ds.Tables["member_master"].Rows[0];
            sp_name.InnerText = r["m_name"].ToString(); 
            sp_joindate.InnerText = r["m_createdate"].ToString();
            sp_last_logindate.InnerText = r["m_lastlogin_date2"].ToString();



        }

        // show paper deatils

        StrQr = " SELECT     test_master.t_id   as [ID] , exam_master.e_name as [Examination], test_master.t_exam_date as [Exam Date], test_master.t_total_marks as [Out Of], test_master.t_marks_get as [Marks], test_master.t_percent As [Percent] " +
        " FROM   test_master INNER JOIN exam_master ON test_master.t_exam_id = exam_master.e_id where test_master.t_mem_id = " + Session["uid"].ToString() + " order by test_master.t_id ";
        
        //query to get user deatils

        da = new SqlDataAdapter(StrQr, cn);
        ds.Clear();
        ds = new DataSet();
        da.Fill(ds, "test_master");

        sp_test_given.InnerText = ds.Tables["test_master"].Rows.Count.ToString();
        ViewState["ds"] = ds;
        GridView1.DataSource = ViewState["ds"];
        GridView1.DataMember = "test_master";
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = ViewState["ds"];
        GridView1.DataMember = "test_master";
        GridView1.DataBind();
    }
}
