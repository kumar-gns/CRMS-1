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

public partial class Status_Master : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("user id=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime dt;
        dt = DateTime.Now;
        txtdt.Text = dt.ToString("dd/MM/yyyy");
        txtdt.Enabled = false;
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string stcd, stdes;
        stcd = txtstcd.Text;
        stdes = txtstdes.Text;
        int z;
        string s = "select count(*) from Sm where stcd='" + stcd + "'";
        con.Open();
        OracleCommand cmdcount = new OracleCommand(s, con);
        z = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (z == 1)
        {
            lblsmmsg.Text = "Code already exists";
        }
        else
        {
            string str = "insert into Sm values('" + stcd + "','" + stdes + "')";
            OracleCommand cmd = new OracleCommand(str, con);
            cmd.ExecuteNonQuery();
            lblsmmsg.Text = "Values inserted Successfully";
            txtstcd.Text = "";
            txtstdes.Text = "";
        }
        con.Close();
    }
    protected void btnmdfy_Click(object sender, EventArgs e)
    {
        string stcd, stdes;
        stcd = txtstcd.Text;
        stdes = txtstdes.Text;
        con.Open();
        string str = "update Sm set stcd='" + stcd + "',stdes='" + stdes + "' where stcd='" + stcd + "'";
        OracleCommand cmd = new OracleCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
        lblsmmsg.Text = "Values Modified Sucessfully";
        txtstcd.Text = "";
        txtstdes.Text = "";

    }
    protected void btndlt_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "select count(*) from Sm where stcd= '" + txtstcd.Text + "'";
        OracleCommand cmd = new OracleCommand(s, con);
        int c;
        c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            string str = "delete from Sm where  stcd= '" + txtstcd.Text + "'";
            OracleCommand cmddel = new OracleCommand(str, con);            
            cmddel.ExecuteNonQuery();
            lblsmmsg.Text = "Values Deleted";
            con.Close();
        }
        txtstcd.Text = "";
        txtstdes.Text = "";

    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtstcd.Text = "";
        txtstdes.Text = "";
        lblsmmsg.Text = "";

    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        string strview = "select * from Sm where  stcd= '" + txtstcd.Text + "'";
        con.Open();
        OracleCommand cmdview = new OracleCommand(strview, con);
        OracleDataReader dr;
        dr = cmdview.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txtstcd.Text = dr[0].ToString();
                txtstdes.Text = dr[1].ToString();
            }
            lblsmmsg.Text = "";
        }
        else
        {
            lblsmmsg.Text = "Values does not exists";
        }
    }

    protected void btnext_Click(object sender, EventArgs e)
    {

    }
}
