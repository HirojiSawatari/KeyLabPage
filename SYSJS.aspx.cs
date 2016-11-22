using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class SYSJS : System.Web.UI.Page
{
    public string strZT = "";
    public string strNR = "";
    public string strTP1 = "";
    public string strTP2 = "";
    public string strTP3 = "";
    public string strTP4= "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dt = DataControl.GetData("select * from 实验室介绍");
            if (dt.Rows.Count > 0)
            {
                strZT = dt.Rows[0]["主题"] + "";
                strNR = dt.Rows[0]["内容"] + "";
                strTP1 = dt.Rows[0]["图片1"] + "";
                strTP2 = dt.Rows[0]["图片2"] + "";
                strTP3 = dt.Rows[0]["图片3"] + "";
                strTP4 = dt.Rows[0]["图片4"] + "";
            }
        }
    }
}
