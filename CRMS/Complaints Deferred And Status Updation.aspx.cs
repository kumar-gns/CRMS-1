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

public partial class Complaints_Deferred_And_Status_Updation : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        pnlforward.Visible = false;
        pnlDef.Visible = false;
        pnlcr.Visible = false;

        if (IsPostBack == false)
        {
           
            DateTime dt;
            dt = DateTime.Now;
            txtdt.Text = dt.ToString("dd-MMM-yyyy");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select crn from cr", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "crn");
            int c = ds.Tables[0].Rows.Count;
            string[] a = new string[100];
            for (int i = 0; i < c; i++)
            {
                a[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddlcrn.Items.Add(a[i]);
            }
            OracleDataAdapter ad = new OracleDataAdapter("select stcd from sm", con);
            DataSet sd = new DataSet();
            ad.Fill(sd, "stcd");
            int d = sd.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int j = 0; j < d; j++)
            {
                b[j] = sd.Tables[0].Rows[j].ItemArray[0].ToString();
                ddlstats.Items.Add(b[j]);
            }
            OracleDataAdapter ab = new OracleDataAdapter("select poc from ct", con);
            DataSet dc = new DataSet();
            ab.Fill(dc, "poc");
            int z = dc.Tables[0].Rows.Count;
            string[] f = new string[100];
            for (int k = 0; k < z; k++)
            {
                f[k] = dc.Tables[0].Rows[k].ItemArray[0].ToString();
                ddlpoc.Items.Add(f[k]);
            }
                con.Close();
        }
    }    
    protected void ddlstats_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        string str = ddlstats.SelectedValue;
        OracleCommand cmd = new OracleCommand("select stdes from sm where stcd='" + str + "'",con);
        con.Open();
        string s;
        s = cmd.ExecuteScalar().ToString();
        txtsc.Text = s;
        if (str == "3")
        {
            pnlforward.Visible = true;
        }
        else if (str == "4")
        {
            pnlDef.Visible = true;
        }
        else if (str == "1" || str=="2")
        {
            pnlcr.Visible = true;
        }
    }
    protected void ddlcrn_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select * from cr where crn='" + ddlcrn.Text + "'";
        con.Open();
        OracleCommand cmd = new OracleCommand(str, con);
        OracleDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txttoc.Text = dr[0].ToString();
                txtwcc.Text = dr[1].ToString();
                DateTime dt = Convert.ToDateTime(dr[3].ToString());
                txtrdt.Text = dt.ToString("dd/MM/yyyy");
                txtan.Text = dr[4].ToString();
                txtadrs.Text = dr[5].ToString();
                txthno.Text = dr[6].ToString();
                txtstrt.Text = dr[7].ToString();
                txtarea.Text = dr[8].ToString();
                txtpc.Text = dr[9].ToString();
                txtph.Text = dr[10].ToString();
                txtmail.Text = dr[11].ToString();
                txtfax.Text = dr[12].ToString();
                txtdoc.Text = dr[13].ToString();
                DateTime dt1 = Convert.ToDateTime(dr[14].ToString());
                txtedc.Text = dt1.ToString("dd/MM/yyyy");
            }
            con.Close();
        }        

    }
    protected void btnsave_Click(object sender, EventArgs e)
     {
        string status;        
        status = ddlstats.SelectedValue;        
        if (status=="3" )
        {            
            string  crn, suid, ruid, remarks,soc,poc;
            DateTime dt;
            CultureInfo cf = new CultureInfo("hi-IN");
            dt = Convert.ToDateTime(txtdate.Text, cf);
            string fdt;
            fdt = dt.ToString("dd/MMM/yyyy");           
            suid = txtsuid.Text;
            ruid = txtruid.Text;
            remarks = txtremrks.Text;
            crn = ddlcrn.SelectedValue;
            soc = ddlstats.SelectedValue;
            poc = ddlpoc.SelectedValue;
            con.Open();
            string str = "insert into cdosu(crn,fd,suid,ruid,remarks,soc,poc) values('" + crn + "','" + fdt + "','" + suid + "','" + ruid + "','" + remarks + "','" + soc + "','" + poc + "')";
            OracleCommand cmd = new OracleCommand(str, con);
            cmd.ExecuteNonQuery();
            lblcdosumsg.Text = "Complaint Forwarded ";
        }
        else if (status == "1" || status=="2")
        {
            string crn,crd,cruid,crvb,crr,soc,poc;                                
            DateTime dt;
            CultureInfo cf = new CultureInfo("hi-IN");
            dt = Convert.ToDateTime(txtad.Text, cf);
            crd = dt.ToString("dd/MMM/yyyy");
            cruid = txtauid.Text;
            crvb = txtivuid.Text;
            crr = txtrmrks.Text;
            crn = ddlcrn.SelectedValue;
            soc = ddlstats.SelectedValue;
            poc = ddlpoc.SelectedValue;
            con.Open();
            string str1 = "insert into cdosu(crn,crd,cruid,crvb,crr,soc,poc) values ('" + crn + "','" + crd + "','" + cruid + "','" + crvb + "','" + crr + "','" + soc + "','" + poc + "')";
            OracleCommand cmd1 = new OracleCommand(str1, con);
             cmd1.ExecuteNonQuery();
            lblcdosumsg.Text = "complaint Rejected ";
            lblcdosumsg.Text = "Complaint Completion";
        }
        else if (status == "4")
        {
            string dd,dr,crn,soc,poc;
            DateTime dt;
            CultureInfo cf = new CultureInfo("hi-IN");
            dt = Convert.ToDateTime(txtdd.Text, cf);
            dd = dt.ToString("dd/MMM/yyyy");
            dr = txtdr.Text;
            crn = ddlcrn.SelectedValue;
            soc = ddlstats.SelectedValue;
            poc = ddlpoc.SelectedValue;
            con.Open();
            string str1 = "insert into cdosu(crn,dd,dr,soc,poc) values ('" + crn + "','" + dd + "','" + dr + "','" + soc + "','" + poc + "')";
            OracleCommand cmd2 = new OracleCommand(str1, con);            
            cmd2.ExecuteNonQuery();
            lblcdosumsg.Text = "Complaint Deferred";
        }         
    }
    protected void btncancl_Click(object sender, EventArgs e)
    {
        txtwcc.Text = "";
        txttoc.Text = "";
        txtdoc.Text = "";
        txtrdt.Text = "";
        txtan.Text = "";
        txtadrs.Text = "";
        txthno.Text = "";
        txtarea.Text = "";
        txtpc.Text = "";
        txtmail.Text = "";
        txtedc.Text = "";
        txtph.Text = "";
        txtfax.Text = "";
        txtstrt.Text = "";
        lblcdosumsg.Text = "";
        ddlpoc.Items.Clear();
        ddlpoc.Items.Add("--SELECT--");
        ddlstats.Items.Clear();
        ddlcrn.Items.Clear();
        ddlcrn.Items.Add("--SELECT--");
        ddlstats.Items.Add("--SELECT--");
        con.Open();
        OracleDataAdapter da = new OracleDataAdapter("select crn from cr",con);
        DataSet ds = new DataSet();
        da.Fill(ds,"crn");
        int a = ds.Tables[0].Rows.Count;
        string[] b = new string[100];
        for (int i = 0; i < a; i++)
        {
            b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
            ddlcrn.Items.Add(b[i]);
         }
         OracleDataAdapter ad = new OracleDataAdapter("select stcd from sm",con);
         DataSet sd = new DataSet();
         ad.Fill(sd, "sm");
         int c = sd.Tables[0].Rows.Count;
         string[] d = new string[100];
         for (int j = 0; j < c; j++)
         {
             d[j]=sd.Tables[0].Rows[j].ItemArray[0].ToString();
             ddlstats.Items.Add(d[j]);
         }
         OracleDataAdapter ab = new OracleDataAdapter("select poc from ct", con);
         DataSet dc = new DataSet();
         ab.Fill(dc, "poc");
         int z = dc.Tables[0].Rows.Count;
         string[] f = new string[100];
         for (int k = 0; k < z; k++)
         {
             f[k] = dc.Tables[0].Rows[k].ItemArray[0].ToString();
             ddlpoc.Items.Add(f[k]);
         }
        con.Close();
    }
}

 