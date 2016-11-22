using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class KFJJ : System.Web.UI.Page
{
    public string strZT = "";
    public string strNR = "";
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dt = DataControl.GetData("select * from 开放基金简介");
            if (dt.Rows.Count > 0)
            {
                strZT = dt.Rows[0]["主题"] + "";
                strNR = dt.Rows[0]["内容"] + "";
                
            }
        }
    }
}
