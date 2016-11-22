using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Data.OleDb;

public partial class addnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string f_name = null;
        HttpFileCollection hfc = Request.Files;
        for (int i = 0; i < hfc.Count; i++)
        {
            HttpPostedFile hpf = hfc[i];
            f_name = Path.GetFileName(hpf.FileName);
            hpf.SaveAs(Server.MapPath("~/新闻/") + f_name);
        }

        string strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;";
        strConnection += @"Data Source='" + MapPath("news_pgg.mdb") + "'";
        OleDbConnection objConnection = new OleDbConnection(strConnection);
        objConnection.Open();

        String adapt = "INSERT INTO news (标题,路径) VALUES('" + TextBox1.Text + "','~/新闻/'+'" + f_name + "')";
        OleDbCommand cmd = new OleDbCommand(adapt, objConnection);
        OleDbDataReader reader = cmd.ExecuteReader();
        objConnection.Close();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "1", "<script type=text/javascript>alert('添加新闻成功');</script>");
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ACEINFOList.aspx");
    }
    
}
