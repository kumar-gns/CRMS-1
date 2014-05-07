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
using System.Globalization;

public partial class Complaint_registration : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;Data source=Ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DateTime dt;
            dt = DateTime.Now;
            txtdt.Text = dt.ToString("dd/MM/yyyy");
            DateTime dt1;
            dt1 = DateTime.Now;
            txtrdt.Text = dt1.ToString("dd/MM/yyyy");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select * from ct", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "ct");
            int a = ds.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int i = 0; i < a; i++)
            {
                b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddltoc.Items.Add(b[i]);
            }
            OracleDataAdapter ad = new OracleDataAdapter("select * from wccntrmaster", con);
            DataSet sd = new DataSet();
            ad.Fill(sd, "wccntrmaster");
            int c = sd.Tables[0].Rows.Count;
            string[] d = new string[100];
            for (int j = 0; j < c; j++)
            {
                d[j] = sd.Tables[0].Rows[j].ItemArray[0].ToString();
                ddlwcc.Items.Add(d[j]);
            }
                con.Close();
                txtwcc.Enabled = false;
                txtdt.Enabled = false;
                txtedc.Enabled = false;
                txtcrn.Enabled = false;
                txtrdt.Enabled = false;
                txtdoc.Enabled = false;
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {        
        DateTime dt,dt1;
        CultureInfo cf = new CultureInfo("hi-IN");
        dt = Convert.ToDateTime(txtrdt.Text, cf);
        dt1 = dt.AddDays(15);
        txtedc.Text = dt1.ToString("dd/MM/yyyy");
        string date1,date2;
        date2 = dt1.ToString("dd-MMM-yyyy");
        date1 = dt.ToString("dd-MMM-yyyy");        
        string toc, wcc, crn, an, addr, hno, street, area, pcd, phone, email, fax, doc;
        toc = ddltoc.SelectedValue;
        wcc = ddlwcc.SelectedValue;
        an = txtan.Text;
        addr = txtaddr.Text;
        hno = txthno.Text;
        street = txtstreet.Text;
        area = txtarea.Text;
        pcd = txtpcd.Text;
        phone = txtphone.Text;
        email = txtmail.Text;
        fax = txtfax.Text;
        doc = txtdoc.Text;        
        string w,d;
        w = ddlwcc.Text;
        d = DateTime.Now.Year.ToString();
        con.Open();
        string sn,srn,str;
        int n,count=0,m;
        sn="select count(crn) from cr";
        OracleCommand cmdcount=new OracleCommand(sn,con);
        n = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (n == 0)
        {
            count = 1;            
        }
        else
        {
            srn = "select max(substr(cr.crn,8,1)) from cr";            
            OracleCommand cmdmax = new OracleCommand(srn, con);            
            str = cmdmax.ExecuteScalar().ToString();                   
            m = int.Parse(str);
            //++m;
            count = m + 1;
        }
        crn = w + "/" + d + "/" + count;
        txtcrn.Text = crn;
        string s = "insert into cr values ('" + toc + "','" + wcc + "','" + crn + "','" + date1 + "','" + an + "','" + addr + "','" + hno + "','" + street + "','" + area + "'," + pcd + "," + phone + ",'" + email + "'," + fax + ",'" + doc + "','" + date2 + "')";
        OracleCommand cmd=new OracleCommand(s,con);
        cmd.ExecuteNonQuery();
        con.Close();                
            }

    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtrdt.Text = "";
        txtan.Text = "";
        txtaddr.Text = "";
        txthno.Text = "";
        txtstreet.Text = "";
        txtarea.Text = "";
        txtpcd.Text = "";
        txtphone.Text = "";
        txtmail.Text = "";
        txtfax.Text = "";
        txtdoc.Text = "";
        txtedc.Text = "";
        txtcrn.Text = "";
        txtwcc.Text = "";
        ddlwcc.Items.Clear();
        ddlwcc.Items.Add("--SELECT--");
        con.Open();
        OracleDataAdapter da = new OracleDataAdapter("select * from wccntrmaster", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "wccntrmaster");
        int s = ds.Tables[0].Rows.Count;
        string[] k = new string[100];
        for (int j = 0; j < s; j++)
        {
            k[j] = ds.Tables[0].Rows[j].ItemArray[0].ToString();
            ddlwcc.Items.Add(k[j]);
        }
        ddltoc.Items.Clear();
        ddltoc.Items.Add("--SELECT--");
        OracleDataAdapter ad = new OracleDataAdapter("select * from ct", con);
        DataSet sd = new DataSet();
        ad.Fill(sd, "ct");
        int a = sd.Tables[0].Rows.Count;
        string[] b = new string[100];
        for (int i = 0; i < a; i++)
        {
            b[i] = sd.Tables[0].Rows[i].ItemArray[0].ToString();
            ddltoc.Items.Add(b[i]);
        }
        con.Close();
    }
    protected void ddltoc_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = ddltoc.SelectedValue;
        OracleCommand cmd = new OracleCommand("select ctd from ct where ctc='" + ddltoc.SelectedValue + "'", con);
        con.Open();
        string s;
        s = cmd.ExecuteScalar().ToString();
        txtdoc.Text = s;
        con.Close();
    }
    protected void ddlwcc_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str1 = ddlwcc.SelectedValue;
        OracleCommand cmd1 = new OracleCommand("select wardccname from wccntrmaster where wardccd='" + ddlwcc.SelectedValue + "'", con);
        con.Open();
        string s1;
        s1 = cmd1.ExecuteScalar().ToString();
        txtwcc.Text = s1;
        con.Close();
    }
}

