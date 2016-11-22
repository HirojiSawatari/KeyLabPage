using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 研究生培养_ssspy_1_1 : System.Web.UI.Page
{
    public OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = DataControl.createConnection();
        conn.Open();
        OleDbCommand cmd2 = new OleDbCommand("select * from 研究生培养 where 名称='水文学及水资源'", conn);
        
        OleDbDataReader reader = cmd2.ExecuteReader();
        reader.Read();
        string text = reader["内容"].ToString();
        Label1.Text = text;
        conn.Close();
        if (!Page.IsPostBack)
        {
            this.DataList1.DataSource = DataControl.GetData("select * from 培养 where 主题='水文学及水资源介绍下载'");
            this.DataList1.DataBind();
        }
    }
}