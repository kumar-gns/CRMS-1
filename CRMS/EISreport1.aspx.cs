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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.OracleClient;
using System.Globalization;

public partial class EISreport1 : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("uid=scott;pwd=tiger;data source=ora9i");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DateTime dt;
            dt = DateTime.Now;
            txtdt.Text = dt.ToString("dd/MM/yyyy");
        }         
    }
    protected void btnppf_Click(object sender, EventArgs e)
    {
        string s, m, w;
        DateTime frd, td;
        CultureInfo cf = new CultureInfo("hi-IN");
        frd = Convert.ToDateTime(txtfd.Text, cf);
        td = Convert.ToDateTime(txttd.Text, cf);
        w = txtwc.Text;
        m = txtsc.Text;        
        //s = "{{CDOSU.SOC}= '" + m + "' and {CR.WCC}='" + w + "'} and {{cr.regdt}>=#" + frd + "# and {cr.regdt}<=#" + td + "#}";
        s = "{CDOSU.SOC}= '" + m + "' and {CR.WCC}='" + w + "' and {CR.REGDT}>=#" + frd + "# and {CR.REGDT}<=#" + td + "#";   
 
        ParameterField pf = new ParameterField();
        ParameterFields param = new ParameterFields();
        ParameterDiscreteValue df = new ParameterDiscreteValue();        
        pf.ParameterFieldName = "statuscd";
        df.Value = m;
        pf.CurrentValues.Add(df);
        param.Add(pf);
        ParameterField pf1 = new ParameterField();
        ParameterDiscreteValue fd = new ParameterDiscreteValue();
        pf1.ParameterFieldName = "wardcode";
        fd.Value = w;
        pf1.CurrentValues.Add(fd);
        param.Add(pf1);        
        ParameterField pf2 = new ParameterField();
        ParameterDiscreteValue df1 = new ParameterDiscreteValue();
        pf2.ParameterFieldName = "From";
        df1.Value = frd;
        pf2.CurrentValues.Add(df1);
        param.Add(pf2);
        ParameterField pf3 = new ParameterField();
        ParameterDiscreteValue df2 = new ParameterDiscreteValue();
        pf3.ParameterFieldName = "To";
        df2.Value = td;
        pf3.CurrentValues.Add(df2);
        param.Add(pf3);
        ReportDocument rpt = new ReportDocument();
        rpt.Load(Server.MapPath("statusWise.rpt"));
        rpt.FileName=Server.MapPath("statusWise.rpt");        
        CrystalReportViewer1.ParameterFieldInfo = param;
        CrystalReportViewer1.ReportSource = rpt;
        CrystalReportViewer1.DisplayGroupTree = false;
        CrystalReportViewer1.DisplayToolbar = false;
        CrystalReportViewer1.SelectionFormula = s;
        rpt.SetDatabaseLogon("scott", "tiger", "ora9i", "");
        CrystalReportViewer1.DataBind();

    }
    protected void btnclr_Click(object sender, EventArgs e)
    {        
        txtdt.Text = "";
        txtfd.Text = "";
        txtsc.Text = "";
        txttd.Text = "";
        txtwc.Text = "";
    }
    protected void btnfile_Click(object sender, EventArgs e)
    {
        string s, m, w;
        DateTime frd, td;
        CultureInfo cf = new CultureInfo("hi-IN");
        frd = Convert.ToDateTime(txtfd.Text, cf);
        td = Convert.ToDateTime(txttd.Text, cf);
        w = txtwc.Text;
        m = txtsc.Text;
        //s = "{{CDOSU.SOC}= '" + m + "' and {CR.WCC}='" + w + "'} and {{cr.regdt}>=#" + frd + "# and {cr.regdt}<=#" + td + "#}";
        s = "{CDOSU.SOC}= '" + m + "' and {CR.WCC}='" + w + "' and {CR.REGDT}>=#" + frd + "# and {CR.REGDT}<=#" + td + "#";
        ReportDocument rpt = new ReportDocument();
        rpt.Load(Server.MapPath("statusWise.rpt"));
        rpt.FileName = Server.MapPath("statusWise.rpt");
        rpt.SetParameterValue("statuscd", m);
        rpt.SetParameterValue("wardcode", w);
        rpt.SetParameterValue("From", frd);
        rpt.SetParameterValue("To", td);
        rpt.RecordSelectionFormula = s;
        rpt.SetDatabaseLogon("scott", "tiger", "ora9i", "");
        rpt.ExportToDisk(ExportFormatType.WordForWindows, "C:/crmsrpts/EIS.doc");

    }
}
