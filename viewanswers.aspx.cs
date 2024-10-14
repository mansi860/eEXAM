using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class viewanswers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            return;
        }
        sp_candidate.InnerText = Session["uname"].ToString();
        //sp_paper.InnerText = Request.QueryString["exam"].ToString();
        sp_date.InnerText = System.DateTime.Now.Date.ToString();
        DataSet ds1 = new DataSet();
        ds1 = (DataSet)Session["mainds"];
        ViewState["ds"] = ds1;


        Session["qp"] = 0;

        DisplayQst();
    }
    protected void BtnEnd_Click(object sender, EventArgs e)
    {
        Response.Redirect("examresults.aspx");
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        int p;
        p = int.Parse(Session["qp"].ToString());
        
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
        p = int.Parse(Session["qp"].ToString());
        if (p >= int.Parse(Session["tq"].ToString()) - 1)
        {
            ClsMain.CreateMessageAlert(this, "Last Question.", "123");
            return;
        }
        Session["qp"] = p + 1;
        DisplayQst();
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

        r1.Visible = false;
        r2.Visible = false;
        r3.Visible = false;
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




        int i, p;
        p = int.Parse(Session["qp"].ToString());
        DataSet ds1 = new DataSet();
        ds1 = (DataSet)ViewState["ds"];
        DataRow qr, ar;
        qr = ds1.Tables["q"].Rows[p];
        sp_qst_no.InnerText = qr["q_no"].ToString();
        sp_qst.InnerText = qr["q_text"].ToString();

        //get answers
        DataRow[] dr1;
        dr1 = ds1.Tables["a"].Select("a_q_no = '" + qr["q_id"].ToString() + "'");
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
                    if (string.Equals(ar["a_answer_given"], "1") == false)
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
            string fc;
            fc = "<font color='red'>";
            if (i == 0)
            {
                sp_ans_op1.InnerText = "A";
                if (string.Equals(ar["a_right_answer"], "1") == true)
                {
                    fc = "<font color='blue'>";
                }

                sp_ans1.InnerHtml =fc + ar["a_text"].ToString() + "</font>";
            }
            if (i == 1)
            {
                sp_ans_op2.InnerText = "B";
                if (string.Equals(ar["a_right_answer"], "1") == true)
                {
                    fc = "<font color='blue'>";
                }

                sp_ans2.InnerHtml = fc + ar["a_text"].ToString() + "</font>";
            }
            if (i == 2)
            {
                sp_ans_op3.InnerText = "C";
                if (string.Equals(ar["a_right_answer"], "1") == true)
                {
                    fc = "<font color='blue'>";
                }

                sp_ans3.InnerHtml = fc + ar["a_text"].ToString() + "</font>";
            }
            if (i == 3)
            {
                sp_ans_op4.InnerText = "D";
                if (string.Equals(ar["a_right_answer"], "1") == true)
                {
                    fc = "<font color='blue'>";
                }

                sp_ans4.InnerHtml = fc + ar["a_text"].ToString() + "</font>";
            }
            if (i == 4)
            {
                sp_ans_op5.InnerText = "E";
                if (string.Equals(ar["a_right_answer"], "1") == true)
                {
                    fc = "<font color='blue'>";
                }

                sp_ans5.InnerHtml = fc + ar["a_text"].ToString() + "</font>";
            }

        }
        LblPos.Text = qr["q_no"].ToString() + "/" + Session["tq"].ToString();
    }


}
