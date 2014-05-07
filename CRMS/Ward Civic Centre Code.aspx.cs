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

public partial class Ward_Civic_Centre_Code : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {     
        string cd, cname, add, hno, street, area, emailid;
        long phno;
        int fax, pincd;
        cd = txtcd.Text;
        cname = txtname.Text;
        add = txtadd.Text;
        hno = txtHno.Text;
        street = txtStr.Text;
        area = txtArea.Text;
        if (txtpincd.Text == "")
        {
            pincd = 0;
        }
        else
        {
            pincd = int.Parse(txtpincd.Text);
        }
        if (txtphno.Text == "")
        {
            phno = 0;
        }
        else
        {
            phno = long.Parse(txtphno.Text);
        }
        emailid = txteid.Text;
        if (txtfax.Text == "")
        {
            fax = 0;
        }
        else
        {
            fax = int.Parse(txtfax.Text);
        }
        int b;
        string s = "select count(*) from WCCntrMaster where WARDCCD='" + txtcd.Text + "'";
        con.Open();
        OracleCommand cmdcount = new OracleCommand(s, con);
        b = int.Parse(cmdcount.ExecuteScalar().ToString());
        if (b == 1)
        {
            lblmsg.Text = "Code already exists";
            txtcd.Text = "";
            txtname.Text = "";
            txtadd.Text = "";
            txtHno.Text = "";
            txtStr.Text = "";
            txtArea.Text = "";
            txtpincd.Text = "";
            txtphno.Text = "";
            txteid.Text = "";
            txtfax.Text = "";
        }
        else
        {
            string str = "insert into WCCntrMaster values('" + cd + "','" + cname + "','" + add + "','" + hno + "','" + street + "','" + area + "'," + pincd + "," + phno + ",'" + emailid + "'," + fax + ")";

            OracleCommand cmd = new OracleCommand(str, con);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Values inserted successfully";
            txtcd.Text = "";
            txtname.Text = "";
            txtadd.Text = "";
            txtHno.Text = "";
            txtStr.Text = "";
            txtArea.Text = "";
            txtpincd.Text = "";
            txtphno.Text = "";
            txteid.Text = "";
            txtfax.Text = "";
        }
        con.Close();
    }
    protected void btnMdfy_Click(object sender, EventArgs e)
    {     
        string cd, cname, add, hno, street, area, emailid;
        long phno;
        int fax, pincd;
        cd = txtcd.Text;
        cname = txtname.Text;
        add = txtadd.Text;
        hno = txtHno.Text;
        street = txtStr.Text;
        area = txtArea.Text;
        if (txtpincd.Text == "")
        {
            pincd = 0;
        }
        else
        {
            pincd = int.Parse(txtpincd.Text);
        }
        if (txtphno.Text == "")
        {
            phno = 0;
        }
        else
        {
            phno = long.Parse(txtphno.Text);
        }
        emailid = txteid.Text;
        if (txtfax.Text == "")
        {
            fax = 0;
        }
        else
        {
            fax = int.Parse(txtfax.Text);
        }
        con.Open();
        string str = "update WCCntrMaster set wardccname='" + cname + "',wardaddr='" + add + "',Hno='" + hno + "',street='" + street + "',Area='" + area + "',pincd=" + pincd + ",phno=" + phno + ",emailid='" + emailid + "',fax=" + fax + " where wardccd='" + cd + "'";

        OracleCommand cmd = new OracleCommand(str, con);
        //con.Close();
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Values inserted successfully";
        txtcd.Text = "";
        txtname.Text = "";
        txtadd.Text = "";
        txtHno.Text = "";
        txtStr.Text = "";
        txtArea.Text = "";
        txtpincd.Text = "";
        txtphno.Text = "";
        txteid.Text = "";
        txtfax.Text = "";
    }
    protected void btndlt_Click(object sender, EventArgs e)
    {     
        con.Open();
        string s = "select count(*) from WCCntrMaster where WARDCCD= '" + txtcd.Text + "'";
        OracleCommand cmd = new OracleCommand(s, con);
        int c;
        c = int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            string str = "delete from WCCntrMaster where  WARDCCD= '" + txtcd.Text + "'";
            OracleCommand cmddel = new OracleCommand(str, con);
            cmddel.ExecuteNonQuery();
            con.Close();
            txtcd.Text = "";
            txtname.Text = "";
            txtadd.Text = "";
            txtHno.Text = "";
            txtStr.Text = "";
            txtArea.Text = "";
            txtpincd.Text = "";
            txtphno.Text = "";
            txteid.Text = "";
            txtfax.Text = "";
            lblmsg.Text = "Code deleted";
        }
        else
        {
            lblmsg.Text = "Code does not exists";
        }
    }
    protected void btnview_Click(object sender, EventArgs e)
    {
        string strview = "select * from WCCntrMaster where  WARDCCD= '" + txtcd.Text + "'";
        con.Open();
        OracleCommand cmdview = new OracleCommand(strview, con);
        OracleDataReader dr;
        dr = cmdview.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txtcd.Text = dr[0].ToString();
                txtname.Text = dr[1].ToString();
                txtadd.Text = dr[2].ToString();
                txtHno.Text = dr[3].ToString();
                txtStr.Text = dr[4].ToString();
                txtArea.Text = dr[5].ToString();
                txtpincd.Text = dr[6].ToString();
                txtphno.Text = dr[7].ToString();
                txteid.Text = dr[8].ToString();
                txtfax.Text = dr[9].ToString();
            }
        }
        else
        {
            lblmsg.Text = "code does not exists";
        }
    }
    protected void btncncl_Click(object sender, EventArgs e)
    {
        txtcd.Text = "";
        txtname.Text = "";
        txtadd.Text = "";
        txtHno.Text = "";
        txtStr.Text = "";
        txtArea.Text = "";
        txtpincd.Text = "";
        txtphno.Text = "";
        txteid.Text = "";
        txtfax.Text = "";
        lblmsg.Text = "";
    }
    protected void btnext_Click(object sender, EventArgs e)
    {

    }
}
