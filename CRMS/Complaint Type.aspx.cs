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
using System.Data.OracleClient;

public partial class Complaint_Type : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DateTime dt;
            dt = DateTime.Now;
            txtdt.Text = dt.ToString("dd/MM/yyyy");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select deptcd from dc ", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "deptcd");
            int c = ds.Tables[0].Rows.Count;
            string[] a = new string[100];
            for (int i = 0; i < c; i++)
            {
                a[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddldcc.Items.Add(a[i]);
            }            
            con.Close();
            txtdt.Enabled = false;
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string ctc, ctd, dcc, poc;
        string ad = "";
        int  nowh;
        ctc = txtctc.Text;
        ctd = txtctd.Text;
        dcc = ddldcc.SelectedValue;
        poc = txtpoc.Text;        
        if (txtnowh.Text == "")
        {
            nowh = 0;
        }
        else
        {
            nowh = int.Parse(txtnowh.Text);
        }
        int m;
        string str = "select count(*) from ct where ctc='" + txtctc.Text + "' and dcc='"+ddldcc.Text+"'";
        con.Open();        
        OracleCommand cmdcount = new OracleCommand(str, con);
        m = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (m == 1)
        {
            lblctmsg.Text = "code already exists";
        }
        else
        {
            string s = "insert into ct values('" + ctc + "','" + ctd + "','" + poc + "','" + nowh + "','" + dcc + "')";
            OracleCommand cmd = new OracleCommand(s, con);            
            cmd.ExecuteNonQuery();
            lblctmsg.Text = " values inserted successfully ";
        }
        con.Close();
    }
    protected void btnmdfy_Click(object sender, EventArgs e)
    {
        string ctc, ctd, dcc, poc;
        int nowh;
        ctc = txtctc.Text;
        ctd = txtctd.Text;
        dcc = ddldcc.Text;        
        poc = txtpoc.Text;        
        if (txtnowh.Text == "") 
        {
            nowh = 0;
        }
        else
        {
        nowh = int.Parse(txtnowh.Text);
        }
        int n;
        string s = "Select count(*) from ct where ctc='" + ctc + "' and dcc='" + dcc + "'";
        con.Open();
        OracleCommand cmdcount = new OracleCommand(s, con);
        n = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (n != 1)
        {
            lblctmsg.Text = "Values cannot be modified";
        }
        else
        {
            string str = "update ct set ctd='" + ctd + "',poc='" + poc + "',nowh='" + nowh + "',dcc='" + dcc + "' where ctc='" + ctc + "' and dcc='" + dcc + "'";
            OracleCommand cmd = new OracleCommand(str, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblctmsg.Text = "Values modified Successfully";
        }
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {

    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "select count (*) from ct where ctc='" + txtctc.Text + "' and dcc='" + ddldcc.Text + "'";
        OracleCommand cmd = new OracleCommand(s, con);
        int p;
        p = int.Parse(cmd.ExecuteScalar().ToString());
        if (p == 1)
        {
            string r = "delete from ct where ctc='" + txtctc.Text + "'and dcc='" + ddldcc.Text + "'";
            OracleCommand cmddel = new OracleCommand(r, con);
            cmddel.ExecuteNonQuery();
            con.Close();
            lblctmsg.Text = "code deleted successfully";

        }
        else
        {
            lblctmsg.Text = "code doesnot exists";

        }

    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtctc.Text = "";
        txtctd.Text = "";
        txtpoc.Text = "";
        txtnowh.Text = "";        
        ddldcc.Items.Clear();        
        ddldcc.Items.Add("--SELECT--");        
        lblctmsg.Text = "";
        con.Open();
        OracleDataAdapter da = new OracleDataAdapter("select deptcd from dc",con);
        DataSet dp = new DataSet();
        da.Fill(dp, "deptcd");
        int s = dp.Tables[0].Rows.Count;
        string[] pp = new string[100];
        for (int i = 0; i < s; i++)
        {
            pp[i] = dp.Tables[0].Rows[i].ItemArray[0].ToString();
            ddldcc.Items.Add(pp[i]);
        }        
        con.Close();        

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        string strview = "select * from ct where ctc='" + txtctc.Text + "'"; 
        con.Open();
        OracleCommand cmdview = new OracleCommand(strview, con);
        OracleDataReader dr;
        dr = cmdview.ExecuteReader();
        if (dr.HasRows)
        {

            while (dr.Read())

            {
                txtctc.Text = dr[0].ToString();
                txtctd.Text = dr[1].ToString();
                txtnowh.Text = dr[3].ToString();
                txtpoc.Text = dr[2].ToString();
                ddldcc.Text = dr[4].ToString();                
                lblctmsg.Text = "code exists";
            }
        }
        else
        {
            lblctmsg.Text = "code already exists";
        }

}

}
