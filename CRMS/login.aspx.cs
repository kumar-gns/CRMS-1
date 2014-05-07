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
public partial class login : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott; pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsbmt_Click(object sender, EventArgs e)
    {
        string uid, pwd;
        uid = txtaname.Text;
        pwd = txtpwd.Text;
        con.Open();
        OracleCommand cmd = new OracleCommand("select count(*) from cou where userid='" + uid + "' and pwd='" + pwd + "'", con);
        int c=int.Parse(cmd.ExecuteScalar().ToString());
        if (c == 1)
        {
            Response.Redirect("http://localhost/P_CRMS/website/Home.aspx");
        }
        else
        {
            lblloginmsg.Text = "Enter correct userid and password";
        }

    }
}
