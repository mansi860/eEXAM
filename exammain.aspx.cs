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

public partial class exammain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //session time out
        if (Session["uid"] == null || Session["uid"] == "")
        {
            Response.Redirect("default.aspx");
            return;
        }

        sp_candidate.InnerText = Session["uname"].ToString();
        sp_paper.InnerText = Request.QueryString["exam"].ToString();
        sp_date.InnerText = System.DateTime.Now.Date.ToString();
        if (Page.IsPostBack == true)
        {
            return;
        }
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = ClsMain.ConnStr;
        cn.Open();

        //create temp data set
        DataSet ds = new DataSet();
        DataTable dt_q = new DataTable("q");
        dt_q.Columns.Add("q_no");
        dt_q.Columns.Add("q_id");
        dt_q.Columns.Add("q_text");
        dt_q.Columns.Add("q_type");
        dt_q.Columns.Add("q_attempt");
        ds.Tables.Add (dt_q);

        DataTable dt_a = new DataTable("a");
        dt_a.Columns.Add("a_no");
        dt_a.Columns.Add("a_q_no");
        dt_a.Columns.Add("a_text");
        dt_a.Columns.Add("a_right_answer");
        dt_a.Columns.Add("a_answer_given");
        ds.Tables.Add(dt_a);

        int tq;
        //get the quetion count
        String StrQr = "SELECT e_no_of_question from exam_master where e_name='" + Request.QueryString["exam"].ToString() + "' ";
        SqlCommand com = new SqlCommand(StrQr,cn);
        tq = int.Parse(com.ExecuteScalar().ToString());
        Session["tq"] = tq;

        //get the question and store in dataset
        StrQr = "SELECT * from question_master where q_exam_id = (select e_id from exam_master where e_name='" + Request.QueryString["exam"].ToString() + "')";


        SqlDataAdapter da = new SqlDataAdapter(StrQr, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);


        //take random id from array
        int[] a1;
        a1 = new int[dt.Rows.Count];
        RandomNo(dt.Rows.Count, a1,tq);
        DataRow r,r1;
        DataRow qr, ar;
        int i,j;
        for (i = 0; i <= dt.Rows.Count - 1; i++)
        {
            r = dt.Rows[a1[i]];
            qr = ds.Tables["q"].NewRow();
            qr["q_no"] = i + 1;
            qr["q_id"] = r["q_id"].ToString();
            qr["q_text"] = r["q_text"].ToString();
            qr["q_type"] = r["q_type"].ToString();
            qr["q_attempt"] = "";

            ds.Tables["q"].Rows.Add(qr);


            //get the answer for this qusetion
            StrQr = "SELECT * from answer_master where a_qusetion_id = " + r["q_id"].ToString();


            da = new SqlDataAdapter(StrQr, cn);
            DataTable dt1 = new DataTable();
            da.Fill(dt1);
            for (j=0;j<=dt1.Rows.Count -1;j++)
            {
                r1=dt1.Rows[j];
                ar = ds.Tables["a"].NewRow();
                ar["a_no"] = r1["a_id"];
                ar["a_q_no"] = r1["a_qusetion_id"];
                ar["a_text"] = r1["a_answer"];
                ar["a_right_answer"] = r1["a_rightanswer"];
                ar["a_answer_given"] = "";
                ds.Tables["a"].Rows.Add(ar);
            }
        }
        Session["qp"] = "0";
        ViewState["ds"] = ds;


        DisplayQst();

    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        int p;
        p = int.Parse(Session["qp"].ToString());
        

        //save the ans
        DataSet ds1 = new DataSet();
        ds1 = (DataSet)ViewState["ds"];
        DataRow qr, ar;
        qr = ds1.Tables["q"].Rows[p];
        string qtype;
        qtype = qr["q_type"].ToString();

        DataRow[] dr1;
        dr1 = ds1.Tables["a"].Select("a_q_no = '" + qr["q_id"].ToString() + "'");
        if (qtype == "SINGLE")
        {
            if (r1.Visible == true)
            {
                if (r1.Checked == true)
                {
                    dr1[0]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[0]["a_answer_given"] = "0";
                }
            }
            if (r2.Visible == true)
            {
                if (r2.Checked == true)
                {
                    dr1[1]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[1]["a_answer_given"] = "0";
                }
            }
            if (r3.Visible == true)
            {
                if (r3.Checked == true)
                {
                    dr1[2]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[2]["a_answer_given"] = "0";
                }
            }
            if (r4.Visible == true)
            {
                if (r4.Checked == true)
                {
                    dr1[3]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[3]["a_answer_given"] = "0";
                }
            }
            if (r5.Visible == true)
            {
                if (r5.Checked == true)
                {
                    dr1[4]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[4]["a_answer_given"] = "0";
                }
            }
        }
        else
        {
            if (c1.Visible == true)
            {
                if (c1.Checked == true)
                {
                    dr1[0]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[0]["a_answer_given"] = "0";
                }
            }
            if (c2.Visible == true)
            {
                if (c2.Checked == true)
                {
                    dr1[1]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[1]["a_answer_given"] = "0";
                }
            }
            if (c3.Visible == true)
            {
                if (c3.Checked == true)
                {
                    dr1[2]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[2]["a_answer_given"] = "0";
                }
            }
            if (c4.Visible == true)
            {
                if (c4.Checked == true)
                {
                    dr1[3]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[3]["a_answer_given"] = "0";
                }
            }
            if (c5.Visible == true)
            {
                if (c5.Checked == true)
                {
                    dr1[4]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[4]["a_answer_given"] = "0";
                }
            }
        }
        ViewState["ds"] = ds1;
        ///
        if (p == 0)
        {
            ClsMain.CreateMessageAlert(this, "First Question.", "123");
            return;
        }

        Session["qp"] = p - 1;
        DisplayQst();
    }
    protected void BtnNext_Click(object sender, EventArgs e)
    {
        int p;
        p=int.Parse(Session["qp"].ToString());
        //save the ans
                //save the ans
        DataSet ds1 = new DataSet();
        ds1 = (DataSet)ViewState["ds"];
        DataRow qr,ar;
        qr = ds1.Tables["q"].Rows[p];
        string qtype;
        qtype=qr["q_type"].ToString();

        DataRow[] dr1;
        dr1 = ds1.Tables["a"].Select("a_q_no = '" + qr["q_id"].ToString() + "'");
        if (qtype == "SINGLE")
        {
            if (r1.Visible == true)
            {
                if (r1.Checked == true)
                {
                    dr1[0]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[0]["a_answer_given"] = "0";
                }
            }
            if (r2.Visible == true)
            {
                if (r2.Checked == true)
                {
                    dr1[1]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[1]["a_answer_given"] = "0";
                }
            }
            if (r3.Visible == true)
            {
                if (r3.Checked == true)
                {
                    dr1[2]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[2]["a_answer_given"] = "0";
                }
            }
            if (r4.Visible == true)
            {
                if (r4.Checked == true)
                {
                    dr1[3]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[3]["a_answer_given"] = "0";
                }
            }
            if (r5.Visible == true)
            {
                if (r5.Checked == true)
                {
                    dr1[4]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[4]["a_answer_given"] = "0";
                }
            }
        }
        else
        {
            if (c1.Visible == true)
            {
                if (c1.Checked == true)
                {
                    dr1[0]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[0]["a_answer_given"] = "0";
                }
            }
            if (c2.Visible == true)
            {
                if (c2.Checked == true)
                {
                    dr1[1]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[1]["a_answer_given"] = "0";
                }
            }
            if (c3.Visible == true)
            {
                if (c3.Checked == true)
                {
                    dr1[2]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[2]["a_answer_given"] = "0";
                }
            }
            if (c4.Visible == true)
            {
                if (c4.Checked == true)
                {
                    dr1[3]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[3]["a_answer_given"] = "0";
                }
            }
            if (c5.Visible == true)
            {
                if (c5.Checked == true)
                {
                    dr1[4]["a_answer_given"] = "1";
                }
                else
                {
                    dr1[4]["a_answer_given"] = "0";
                }
            }
        }
        ViewState["ds"] = ds1;
        ///

        if (p >= int.Parse(Session["tq"].ToString())-1 )
        {
            ClsMain.CreateMessageAlert(this, "Last Question.", "123");
            return;
        }
        Session["qp"] = p + 1;
        DisplayQst();
    }
    protected void BtnEnd_Click(object sender, EventArgs e)
    {
        Session["mainds"] = (DataSet)ViewState["ds"];
        Response.Redirect("examresults.aspx");
    }

    void DisplayQst()
    {
        //reset qst and ans
        sp_ans_op1.InnerText = "";
        sp_ans_op2.InnerText = "";
        sp_ans_op3.InnerText = "";
        sp_ans_op4.InnerText = "";
        sp_ans_op5.InnerText = "";
        sp_ans1.InnerText = "";
        sp_ans2.InnerText = "";
        sp_ans3.InnerText = "";
        sp_ans4.InnerText = "";
        sp_ans5.InnerText = "";
        sp_qst.InnerText = "";
        sp_qst_no.InnerText = "";

        r1.Visible =false;
        r2.Visible =false ;
        r3.Visible =false ;
        r4.Visible = false;
        r5.Visible = false;

        r1.Checked = false;
        r2.Checked = false;
        r3.Checked = false;
        r4.Checked = false;
        r5.Checked = false;


        c1.Visible = false;
        c2.Visible = false;
        c3.Visible = false;
        c4.Visible = false;
        c5.Visible = false;

        c1.Checked = false;
        c2.Checked = false;
        c3.Checked = false;
        c4.Checked = false;
        c5.Checked = false;




        int i,p;
        p = int.Parse( Session["qp"].ToString() );
        DataSet ds1 = new DataSet() ;  
        ds1 = (DataSet)ViewState["ds"];
        DataRow qr, ar;
        qr = ds1.Tables["q"].Rows[p];
        sp_qst_no.InnerText = qr["q_no"].ToString();
        sp_qst.InnerText = qr["q_text"].ToString();

        //get answers
        DataRow[] dr1;
        dr1=ds1.Tables["a"].Select("a_q_no = '" + qr["q_id"].ToString() + "'");
        for (i = 0; i <= dr1.Length - 1; i++)
        {
            ar = dr1[i];
            if (qr["q_type"].ToString() == "SINGLE")
            {
                if (i == 0)
                {
                    r1.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == false)
                    {
                        r1.Checked = false;
                    }
                    else
                    {
                        r1.Checked = true;
                    }
                }
                if (i == 1)
                {
                    r2.Visible = true;
                    if (string.Equals(ar["a_answer_given"],"1")==false)
                    {
                        r2.Checked = false;
                    }
                    else
                    {
                        r2.Checked = true;
                    }
                }
                if (i == 2)
                {
                    r3.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == false)
                    {
                        r3.Checked = false;
                    }
                    else
                    {
                        r3.Checked = true;
                    }
                }
                if (i == 3)
                {
                    r4.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == false)
                    {
                        r4.Checked = false;
                    }
                    else
                    {
                        r4.Checked = true;
                    }
                }
                if (i == 4)
                {
                    r5.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == false)
                    {
                        r5.Checked = false;
                    }
                    else
                    {
                        r5.Checked = true;
                    }
                }

            }
            if (qr["q_type"].ToString() == "MULTIPLE")
            {
                if (i == 0)
                {
                    c1.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == true)
                    {
                        c1.Checked = true;
                    }
                }
                if (i == 1)
                {
                    c2.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == true)
                    {
                        c2.Checked = true;
                    }
                }
                if (i == 2)
                {
                    c3.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == true)
                    {
                        c3.Checked = true;
                    }
                }
                if (i == 3)
                {
                    c4.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == true)
                    {
                        c4.Checked = true;
                    }
                }
                if (i == 4)
                {
                    c5.Visible = true;
                    if (string.Equals(ar["a_answer_given"], "1") == true)
                    {
                        c5.Checked = true;
                    }
                }

            }
            if (i == 0)
            {
                sp_ans_op1.InnerText = "A";
                sp_ans1.InnerText = ar["a_text"].ToString();
            }
            if (i == 1)
            {
                sp_ans_op2.InnerText = "B";
                sp_ans2.InnerText = ar["a_text"].ToString();
            }
            if (i == 2)
            {
                sp_ans_op3.InnerText = "C";
                sp_ans3.InnerText = ar["a_text"].ToString();
            }
            if (i == 3)
            {
                sp_ans_op4.InnerText = "D";
                sp_ans4.InnerText = ar["a_text"].ToString();
            }
            if (i == 4)
            {
                sp_ans_op5.InnerText = "E";
                sp_ans5.InnerText = ar["a_text"].ToString();
            }

        }
        LblPos.Text = qr["q_no"].ToString()  +"/" + Session["tq"].ToString();
    }


    void RandomNo(int max, int[] a ,int tq)
    {
        Random RandomClass = new Random();
        int RandomNumber;

        //a = new int[tq];
   
        int i, j,p;
        p = 0;
        bool ch;
    L1:
        ch = false;
        for (i = 0; i <= tq - 1; i++)
        {
            RandomNumber = RandomClass.Next(0, max);
            ch = false;
            for (j = 0; j <= tq-1  ; j++)
            {
                //if (a[j] == 0)
                //{

                //    ch = true;
                //    goto L1;
                //}

                if (a[j] == RandomNumber   )
                {
                    
                    ch = true;
                    goto L1;
                }
            }
            if (ch == false)
            {
                a[p] = RandomNumber;
                p++;
                if (p >= tq)
                {
                    return;
                }
            }

             
        

        }
         //L2:
         
    }


    
}
