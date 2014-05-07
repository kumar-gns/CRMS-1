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

public partial class DepartmentCategory_Code : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DateTime dt;
            dt = DateTime.Now;
            txtdate.Text = dt.ToString("dd/MM/yyyy");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cou");

            int a = ds.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int i = 0; i < a; i++)
            {
                b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddid.Items.Add(b[i]);
            }
            con.Close();
            txtdate.Enabled = false;
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string deptcd, deptname, hid;
        deptcd = txtdcc.Text;
        deptname = txtdcn.Text;
        hid = ddid.SelectedItem.ToString();
        //date = txtdate.Text;
        //DateTime dt;
        //CultureInfo cf = new CultureInfo("hi-IN");
        //dt = Convert.ToDateTime(date, cf);
        int d;
        string s = "select count(*) from dc where deptcd='" + txtdcc.Text + "' and deptid='" + ddid.Text + "'";
        con.Open();
        OracleCommand cmdcount = new OracleCommand(s, con);
        d = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (d == 1)
        {
            lbldcmsg.Text = "Code already exists";
            txtdcc.Text = "";
            txtdcn.Text = "";
            ddid.Items.Clear();
            ddid.Items.Add("--SELECT--");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cou");

            int a = ds.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int i = 0; i < a; i++)
            {
                b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddid.Items.Add(b[i]);
            }
            con.Close();
        }
        else
        {
            string str = "insert into dc values('" + deptcd + "','" + deptname + "','" + hid + "')";

            OracleCommand cmd = new OracleCommand(str, con);
            cmd.ExecuteNonQuery();
            lbldcmsg.Text = "Values inserted successfully";
            txtdcc.Text = "";
            txtdcn.Text = "";
            ddid.Items.Clear();
            ddid.Items.Add("--SELECT--");
            con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cou");

            int a = ds.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int i = 0; i < a; i++)
            {
                b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddid.Items.Add(b[i]);
            }
            con.Close();
        }
        con.Close();

    }
    protected void btnmdfy_Click(object sender, EventArgs e)
    {
        string deptcd, deptname, hid;
        deptcd = txtdcc.Text;
        deptname = txtdcn.Text;
        hid = ddid.SelectedItem.ToString();
        con.Open();
        string str = "update dc set deptname='" + deptname + "',deptid='" + hid + "' where deptcd='" + deptcd + "'";

        OracleCommand cmd = new OracleCommand(str, con);
        //con.Close();
        cmd.ExecuteNonQuery();
        //con.Close();
        lbldcmsg.Text = "Values modified & inserted successfully";
        txtdcc.Text = "";
        txtdcn.Text = "";
        ddid.Items.Clear();
        ddid.Items.Add("--SELECT--");
        //con.Open();
        OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "cou");

        int a = ds.Tables[0].Rows.Count;
        string[] b = new string[100];
        for (int i = 0; i < a; i++)
        {
            b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
            ddid.Items.Add(b[i]);
        }
        con.Close();

    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "select count(*) from dc where deptcd= '" + txtdcc.Text + "'";
        OracleCommand cmd = new OracleCommand(s, con);
        int c;
        c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            string str = "delete from dc where  deptcd= '" + txtdcc.Text + "'";
            OracleCommand cmddel = new OracleCommand(str, con);
            cmddel.ExecuteNonQuery();
            //con.Close();
            lbldcmsg.Text = "Code Deleted";
            txtdcc.Text = "";
            txtdcn.Text = "";
            ddid.Items.Clear();
            ddid.Items.Add("--SELECT--");
            //con.Open();
            OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "cou");

            int a = ds.Tables[0].Rows.Count;
            string[] b = new string[100];
            for (int i = 0; i < a; i++)
            {
                b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
                ddid.Items.Add(b[i]);
            }
            con.Close();
        }
        else
        {
            lbldcmsg.Text = "Code does not exists";
        }

    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        lbldcmsg.Text = "";
        txtdcc.Text = "";
        txtdcn.Text = "";
        ddid.Items.Clear();
        ddid.Items.Add("--SELECT--");
        con.Open();
        OracleDataAdapter da = new OracleDataAdapter("select * from cou where tou='D'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "cou");

        int a = ds.Tables[0].Rows.Count;
        string[] b = new string[100];
        for (int i = 0; i < a; i++)
        {
            b[i] = ds.Tables[0].Rows[i].ItemArray[0].ToString();
            ddid.Items.Add(b[i]);
        }
        con.Close();

    }
    protected void btnview_Click1(object sender, EventArgs e)
    {
        string strview = "select * from dc where  deptcd= '" + txtdcc.Text + "' and deptid='" + ddid.Text + "'";

        con.Open();
        OracleCommand cmdview = new OracleCommand(strview, con);
        OracleDataReader dr;
        dr = cmdview.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txtdcc.Text = dr[0].ToString();
                txtdcn.Text = dr[1].ToString();
                ddid.Text = dr[2].ToString();
                lbldcmsg.Text = "Code Exists";
            }
        }
        else
        {
            lbldcmsg.Text = "code does not exists";
        }
        con.Close();
    }
    protected void btnexit_Click(object sender, EventArgs e)
    {

    }
}
