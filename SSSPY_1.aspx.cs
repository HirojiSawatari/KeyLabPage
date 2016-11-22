using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SSSPY_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsCallback)
        {
            BindResult();
        }
    }
    private void BindResult()
    {

        //组合查询条件 
        DataTable dt = DataControl.GetData("select * from  研究生方向 where 专业='地图学与地理信息系统' ");
        if (dt != null)
        {
            this.gvData.DataKeyNames = new string[] { "ID" };
            this.gvData.DataSource = dt;
            this.gvData.DataBind();
        }
        DataTable dt2 = DataControl.GetData("select * from  研究生方向 where 专业='第四纪地质学' ");
        if (dt2 != null)
        {
            this.gvData0.DataKeyNames = new string[] { "ID" };
            this.gvData0.DataSource = dt2;
            this.gvData0.DataBind();
        }
        DataTable dt3 = DataControl.GetData("select * from  研究生方向 where 专业='课程与教学论' ");
        if (dt3 != null)
        {
            this.gvData1.DataKeyNames = new string[] { "ID" };
            this.gvData1.DataSource = dt3;
            this.gvData1.DataBind();
        }
        DataTable dt4 = DataControl.GetData("select * from  研究生方向 where 专业='人文地理学' ");
        if (dt4 != null)
        {
            this.gvData2.DataKeyNames = new string[] { "ID" };
            this.gvData2.DataSource = dt4;
            this.gvData2.DataBind();
        }
        DataTable dt5 = DataControl.GetData("select * from  研究生方向 where 专业='生态学' ");
        if (dt5 != null)
        {
            this.gvData3.DataKeyNames = new string[] { "ID" };
            this.gvData3.DataSource = dt5;
            this.gvData3.DataBind();
        }
        DataTable dt6 = DataControl.GetData("select * from  研究生方向 where 专业='水文学' ");
        if (dt6 != null)
        {
            this.gvData4.DataKeyNames = new string[] { "ID" };
            this.gvData4.DataSource = dt6;
            this.gvData4.DataBind();
        }
        DataTable dt7 = DataControl.GetData("select * from  研究生方向 where 专业='自然地理学' ");
        if (dt7 != null)
        {
            this.gvData5.DataKeyNames = new string[] { "ID" };
            this.gvData5.DataSource = dt7;
            this.gvData5.DataBind();
        }
    }
}
