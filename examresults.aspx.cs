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

public partial class examresults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            return;
        }

        //dispaly exam details
        sp_examination.InnerText = Session["exam_name"].ToString();
        sp_description.InnerText = Session["exam_description"].ToString();
        sp_exam_date.InnerText = System.DateTime.Now.Date.ToString();


        //calculate results
        DataSet ds1 = new DataSet();
        ds1 = (DataSet)Session["mainds"];
        DataRow qr, ar;
        

        int i,j, c,ta;
        ta=0;
        c = 0;
        bool ch_noattempt, ch_wronganswer;

        for (i = 0; i <= ds1.Tables["q"].Rows.Count - 1; i++)
        {
            ch_noattempt = false;
            ch_wronganswer = false;
            int a1, a2, a3 ;
            a1 = 0;
            a2 = 0;
            a3 = 0;
            qr = ds1.Tables["q"].Rows[i];
            DataRow[] dr1;
            dr1 = ds1.Tables["a"].Select("a_q_no = '" + qr["q_id"].ToString() + "'");
            for (j = 0; j <= dr1.Length - 1; j++)
            {
                ar = dr1[j];

                if (string.Equals(ar["a_answer_given"].ToString(),"1")==true && string.Equals(ar["a_right_answer"].ToString(),"1")==true )
                {
                    a2 = a2 + 1;
                }
                a1=a1 + int.Parse(ar["a_right_answer"].ToString());

                if (string.Equals(ar["a_answer_given"].ToString(), "1") == true)
                {
                    ch_noattempt = true;
                }

            }
            if (ch_noattempt ==false )
            {
                ta+=1;
            }

            if (a1==a2)
            {
                c += 1;
            }

        }
        int x,t;
        x = int.Parse(Session["exam_marks"].ToString()) / int.Parse(Session["tq"].ToString());
        t = x * c;
        sp_marks.InnerText = t.ToString() + "/" + Session["exam_marks"].ToString();
        int p;
        p = c / int.Parse(Session["tq"].ToString()) * 100;

        string r;
        if (p >= int.Parse(Session["exam_pass"].ToString()))
        {
            r = "<font color='blue'>Pass</blue>";
        }
        else
        {
            r = "<font color='red'>Fail</font>";
        }
        sp_result.InnerHtml  = r;



        //save results
        String StrQr = "SELECT * from test_master where 1=2 ";
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        SqlDataAdapter da = new SqlDataAdapter(StrQr, cn);
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataRow r1;
        r1 = dt.NewRow();
        r1["t_mem_id"] = int.Parse( Session["uid"].ToString());
        r1["t_exam_id"] = int.Parse(Session["exam_id"].ToString());
        r1["t_exam_date"] = System.DateTime.Now.ToString();
        r1["t_total_qst"] = int.Parse(Session["tq"].ToString());
        r1["t_total_attempt"] = ta;
        r1["t_not_atempt"] = int.Parse(Session["tq"].ToString()) - ta;
        r1["t_total_right"] = c;
        r1["t_total_wrong"] = int.Parse(Session["tq"].ToString()) - c;
        r1["t_total_marks"] = int.Parse(Session["exam_marks"].ToString());
        r1["t_marks_get"] = t;
        r1["t_percent"] = p;

        dt.Rows.Add(r1);
        da.Update(dt);
    }
    protected void BtnStart_Click(object sender, EventArgs e)
    {
        Response.Redirect("examination.aspx");
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewanswers.aspx");
    }
    protected void BtnMyAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("myaccount.aspx");
    }
}
