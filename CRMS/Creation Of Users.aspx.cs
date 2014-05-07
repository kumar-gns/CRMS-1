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

public partial class Creation_Of_Users : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
    
    
        if (IsPostBack == false)
        {
            DateTime dt;
            dt = DateTime.Now;
            txtdt.Text = dt.ToString("dd/MM/yyyy");
            txtdt.Enabled = false;
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string uid, uname, pwd, cpwd;
        string tou = "";
        uid = txtuid.Text;
        uname = txtun.Text;
        pwd = txtpwd.Text;
        cpwd = txtcpd.Text;        
        int a;
        if (pwd == cpwd)
        {
            if (rba.Checked)
            {
                tou = "A";
            }
            else if (rbc.Checked)
            {
                tou = "C";
            }
            else if (rbdho.Checked)
            {
                tou = "D";
            }
            else if (rbou.Checked)
            {
                tou = "C";
            }
            else
            {
                lblcumsg.Text = "Select type of user";

                goto F;
            }

            string s = "select count(*) from cou where userid='" + txtuid.Text + "' and tou='"+tou+"'";
            con.Open();
            OracleCommand cmdcount = new OracleCommand(s, con);
            a = int.Parse(cmdcount.ExecuteScalar().ToString());
            if (a == 1)
            {
                lblcumsg.Text = "Code Already exists";
            }
            else
            {
                string str = "insert into cou values('" + uid + "','" + uname + "','" + pwd + "','" + tou + "' )";
                OracleCommand cmd = new OracleCommand(str, con);
                cmd.ExecuteNonQuery();
                lblcumsg.Text = "Values inserted successfully";

            }
            con.Close();
        }
        else
        {
            lblcumsg.Text = "password & confirm password must be same";
        }
        rba.Checked = false;
        rbc.Checked = false;
        rbdho.Checked = false;
        rbou.Checked = false;
    F: ;
    }
protected void  btnmdfy_Click(object sender, EventArgs e)
{
    string uid, uname, pwd, cpwd;
    string tou="";
        uid = txtuid.Text;
        uname = txtun.Text;
        pwd = txtpwd.Text;
        cpwd = txtcpd.Text;
        int a;
        if (pwd == cpwd)
        {
            if (rba.Checked)
            {
                tou = "A";
            }
            else if (rbc.Checked)
            {
                tou = "C";
            }
            else if (rbdho.Checked)
            {
                tou = "D";
            }
            else if (rbou.Checked)
            {
                tou = "C";
            }
            else
            {
                lblcumsg.Text = "Select a Type Of user";
                goto F;
            }
            string s = "select count(*) from cou where userid='" + txtuid.Text + "' and tou='" + tou + "'";
            con.Open();
            OracleCommand cmdcount = new OracleCommand(s, con);
            a = int.Parse(cmdcount.ExecuteScalar().ToString());
            if (a != 1)
            {
                lblcumsg.Text = "Values cannot be modified";
            }
            else
            {
                string str = "update cou set uname='" + uname + "',pwd='" + pwd + "' where userid='" + uid + "' and tou='" + tou + "'";
                OracleCommand cmd = new OracleCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                lblcumsg.Text = "values modified successfully";
            }

        }
        rba.Checked = false;
        rbc.Checked = false;
        rbdho.Checked = false;
        rbou.Checked = false;
    F: ;
}
    protected void btndlt_Click(object sender, EventArgs e)
    {
        string pwd, cpwd;
        pwd = txtpwd.Text;
        cpwd = txtcpd.Text;
        string tou = "";
        if (pwd == cpwd)
        {
            if (rba.Checked)
            {
                tou = "A";
            }
            else if (rbc.Checked)
            {
                tou = "C";
            }
            else if (rbdho.Checked)
            {
                tou = "D";
            }
            else if (rbou.Checked)
            {
                tou = "C";
            }
            else
            {
                lblcumsg.Text = "Select Type Of User";
                goto F;
            }
            con.Open();
            string s = "Select count(*) from cou where userid='" + txtuid.Text + "'";
            OracleCommand cmd = new OracleCommand(s, con);
            int b;
            b = int.Parse(cmd.ExecuteScalar().ToString());
            if (b == 1)
            {
                string str = "delete from cou where userid='" + txtuid.Text + "' and tou='" + tou + "'";
                OracleCommand cmddel = new OracleCommand(str, con);
                cmddel.ExecuteNonQuery();
                con.Close();
                lblcumsg.Text = "code deleted";
            }
            else
            {
                lblcumsg.Text = "Code does not exist";
            }
        }
        txtuid.Text = "";
        txtun.Text = "";
        txtpwd.Text = "";
        txtcpd.Text = "";
        //lblcumsg.Text = "";
        rba.Checked = false;
        rbc.Checked = false;
        rbdho.Checked = false;
        rbou.Checked = false;
    F: ;
    }
protected void  btncncl_Click1(object sender, EventArgs e)
{
        txtuid.Text = "";
        txtun.Text = "";
        txtpwd.Text = "";
        txtcpd.Text = "";
        rba.Checked = false;
        rbc.Checked = false;
        rbdho.Checked = false;
        rbou.Checked = false;
        lblcumsg.Text = "";
}
protected void  btnexit_Click(object sender, EventArgs e)
{

}
    protected void btnview_Click(object sender, EventArgs e)
    {
        string str = "select * from cou where userid='" + txtuid.Text + "'";        
        con.Open();
        OracleCommand cmd = new OracleCommand(str, con);
        OracleDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                txtun.Text = dr[1].ToString();
                txtpwd.Text = dr[2].ToString();
                string s = dr[3].ToString();
                if (s == "A")
                {
                    rba.Checked = true;
                }
                else if (s == "D")
                {
                    rbdho.Checked = true;
                }
                else if (s == "C")
                {
                    rbc.Checked = true;
                }
                else if (s == "O")
                {
                    rbou.Checked = true;
                }
            }
        }
    }
}
