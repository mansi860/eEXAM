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

public partial class examination : System.Web.UI.Page
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
        if (Page.IsPostBack == true)
        {

            return;
        }


        //query to get exam deatils
        String StrQr = "SELECT distinct e_name from exam_master where e_active =1 and e_name is not null order by e_name";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        SqlDataAdapter da = new SqlDataAdapter(StrQr, cn);
        DataTable  dt = new DataTable();
        da.Fill(dt);

        DdlExamination.Items.Add("---Select Examination---");
        int i;
        for (i = 0; i <= dt.Rows.Count  - 1; i++)
        {
            DdlExamination.Items.Add(dt.Rows[i]["e_name"].ToString());
        }



    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("myaccount.aspx");
    }
    protected void BtnStart_Click(object sender, EventArgs e)
    {
        if (DdlExamination.Text == "---Select Examination---")
        {
            ClsMain.CreateMessageAlert(this, "Select examination from list.", "123");
            return;
        
        }
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();
        int qcount,tcount;
        //get the quetion count
        String StrQr = "SELECT e_no_of_question from exam_master where e_name='" + DdlExamination.Text  + "' ";
        SqlCommand com=new SqlCommand (StrQr,cn );
        tcount=int.Parse (com.ExecuteScalar().ToString());
        //get the question count and store in dataset
        StrQr = "SELECT count(*) from question_master where q_exam_id = (select e_id from exam_master where e_name='" + DdlExamination.Text  + "')";
        com=new SqlCommand (StrQr,cn ); 
        qcount=int.Parse(com.ExecuteScalar().ToString());

        if (qcount <tcount )
        {
            ClsMain.CreateMessageAlert(this, "Unable to start examination, qustion is not available.", "123");
            return;
        }

        Response.Redirect("exammain.aspx?exam=" + DdlExamination.Text);
    }
    protected void DdlExamination_SelectedIndexChanged(object sender, EventArgs e)
    {
        //clear text
        sp_description.InnerHtml = "";
        sp_no_qusetion.InnerHtml = "";
        sp_passing_marks.InnerHtml = "";
        sp_total_marks.InnerHtml = "";
        sp_total_time.InnerHtml = "";

        String StrQr = "SELECT * from exam_master where e_name ='" + DdlExamination.Text + "'";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        SqlDataAdapter da = new SqlDataAdapter(StrQr, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            DataRow r;
            r = dt.Rows[0];
            sp_description.InnerHtml = r["e_description"].ToString();
            Session["exam_id"] = r["e_id"].ToString();
            Session["exam_name"] = DdlExamination.Text;
            Session["exam_description"] = r["e_description"].ToString();

            sp_no_qusetion.InnerHtml = r["e_no_of_question"].ToString();
            sp_passing_marks.InnerHtml = r["e_pass_marks"].ToString();
            Session["exam_pass"] = r["e_pass_marks"].ToString();
            sp_total_marks.InnerHtml = r["e_max_marks"].ToString();
            Session["exam_marks"] = r["e_max_marks"].ToString();
            sp_total_time.InnerHtml = r["e_total_time"].ToString() + " Minutes.";


        }

    }
}
