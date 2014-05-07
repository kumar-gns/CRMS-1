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

public partial class ModyCom : System.Web.UI.Page
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
            OracleDataAdapter da = new OracleDataAdapter("select crn from cr", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cr");
            int c = ds.Tables[0].Rows.Count;
            string[] a = new string[100];
            for (int i = 0; i < c; i++)
            {
                a[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddlcrn.Items.Add(a[i]);                  
            }
            OracleDataAdapter ad = new OracleDataAdapter("select * from wccntrmaster", con);
            DataSet sd = new DataSet();
            ad.Fill(sd, "wccntrmaster");
            int d = sd.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int j = 0; j < d; j++)
            {
                b[j] = sd.Tables[0].Rows[j].ItemArray[0].ToString();
                ddlwcc.Items.Add(b[j]);
            }            
            con.Close();
            txtdt.Enabled = false;
            txtedc.Enabled = false;
            txtrod.Enabled = false;
            txtdoc.Enabled = false;
        }
    }
    protected void btnsbmt_Click(object sender, EventArgs e)
    {
        string toc, wcc, an, addrs, hno, strt, area, mail, doc;
        int fax, pcd, ph;
        toc = txttoc.Text;
        wcc = ddlwcc.Text;
        an = txtan.Text;
        addrs = txtaddrs.Text;
        hno = txthno.Text;
        strt = txtstrt.Text;
        area = txtarea.Text;
        if (txtpc.Text == "")
        {
            pcd = 0;
        }
        else
        {
            pcd = int.Parse(txtpc.Text);
        }
        if (txtph.Text== "")
        {
            ph = 0;
        }
        else
        {
            ph = int.Parse(txtph.Text);
        }
        mail = txtmail.Text;
        if (txtfax.Text == "") 
        {
            fax = 0;
        }
        else
        {
        fax = int.Parse(txtfax.Text);
        }
        doc = txtdoc.Text;
        DateTime rod;
        CultureInfo cf = new CultureInfo("hi-IN");
        rod = Convert.ToDateTime(txtrod.Text, cf);
        DateTime edc;
        CultureInfo fc = new CultureInfo("hi-IN");
        edc = Convert.ToDateTime(txtedc.Text, fc);
        string date1, date2;
        date1 = rod.ToString("dd-MMM-yyyy");
        date2 = edc.ToString("dd-MMM-yyyy");
        int v = DateTime.Compare(rod, edc);
        if (v > 0 || v == 0)
        {
            lblmocmsg1.Text = "Enter Correct date";
        }
        else
        {
            con.Open();
            string a = "update cr set toc='" + txttoc.Text + "',wcc='" + ddlwcc.Text + "',regdt='" + date1 + "',an='" + txtan.Text + "',adrs='" + txtaddrs.Text + "',hno='" + txthno.Text + "',strt='" + txtstrt.Text + "',area='" + txtarea.Text + "',pcd=" + pcd + ",ph=" + ph + ",email='" + txtmail.Text + "',fax=" + fax + ",doc='" + txtdoc.Text + "',edc='" + date2 + "' where crn='" + ddlcrn.Text + "'";
            OracleCommand cmd = new OracleCommand(a, con);
            cmd.ExecuteNonQuery();
            con.Close();
            lblmocmsg1.Text = "Code modified";
            txttoc.Text = "";
            //ddlwcc.Text = "";
            txtrod.Text = "";
            txtan.Text = "";
            txtaddrs.Text = "";
            txthno.Text = "";
            txtstrt.Text = "";
            txtarea.Text = "";
            txtpc.Text = "";
            txtph.Text = "";
            txtmail.Text = "";
            txtfax.Text = "";
            txtdoc.Text = "";
            txtedc.Text = "";
            ddlwcc.Items.Clear();
            ddlcrn.Items.Clear();
            ddlwcc.Items.Add("--SELECT--");
            ddlcrn.Items.Add("--SELECT--");
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
            OracleDataAdapter ad = new OracleDataAdapter("select crn from cr", con);
            DataSet sd = new DataSet();
            ad.Fill(sd, "cr");
            int p = sd.Tables[0].Rows.Count;
            string[] m = new string[100];
            for (int f = 0; f < p; f++)
            {
                m[f] = sd.Tables[0].Rows[f].ItemArray[0].ToString();
                ddlcrn.Items.Add(m[f]);
            }
            //lblmocmsg1.Text = "";
            con.Close();
        }
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        string strview = "select * from cr where crn='" + ddlcrn.Text + "'";
        con.Open();
        OracleCommand cmdview = new OracleCommand(strview, con);
        OracleDataReader dr;
        dr = cmdview.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txttoc.Text = dr[0].ToString();
                ddlwcc.Text = dr[1].ToString();
                txtrod.Text = dr[3].ToString();
                txtan.Text = dr[4].ToString();
                txtaddrs.Text = dr[5].ToString();
                txthno.Text = dr[6].ToString();
                txtstrt.Text = dr[7].ToString();
                txtarea.Text = dr[8].ToString();
                txtpc.Text = dr[9].ToString();
                txtph.Text = dr[10].ToString();
                txtmail.Text = dr[11].ToString();
                txtfax.Text = dr[12].ToString();
                txtdoc.Text = dr[13].ToString();
                txtedc.Text = dr[14].ToString();
                lblmocmsg1.Text = "Code existts";
            }
            con.Close();
        }
    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        txttoc.Text = "";
        //ddlwcc.Text = "";
        txtrod.Text = "";
        txtan.Text = "";
        txtaddrs.Text = "";
        txthno.Text = "";
        txtstrt.Text = "";
        txtarea.Text = "";
        txtpc.Text = "";
        txtph.Text = "";
        txtmail.Text = "";
        txtfax.Text = "";
        txtdoc.Text = "";
        txtedc.Text = "";
        ddlwcc.Items.Clear();
        ddlcrn.Items.Clear();
        ddlwcc.Items.Add("--SELECT--");
        ddlcrn.Items.Add("--SELECT--");
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
        OracleDataAdapter ad = new OracleDataAdapter("select crn from cr", con);
        DataSet sd = new DataSet();
        ad.Fill(sd, "cr");
        int p = sd.Tables[0].Rows.Count;
        string[] m = new string[100];
        for (int f = 0; f < p; f++)
        {
            m[f] = sd.Tables[0].Rows[f].ItemArray[0].ToString();
            ddlcrn.Items.Add(m[f]);
        }
            lblmocmsg1.Text = "";
        con.Close();
    }
}
