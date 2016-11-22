using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DataList1.DataSource = DataControl.GetData("select * from 视频 where 编号 = 1");
        this.DataList1.DataBind();
    }
}