using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jsxx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.DataList1.DataSource = DataControl.GetData("select * from 教授 where ID=" + Request.QueryString["ID"]);
            this.DataList1.DataBind();
        }
    }
}
