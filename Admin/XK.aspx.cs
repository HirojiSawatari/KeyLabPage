using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_PY : PageBase
{


  		protected void Page_Load(object sender, EventArgs e)
    {
         //在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表
            if (Request.QueryString["ID"] != null)
            {
                //显示当前的商品信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from 研究生方向 where  ID=" + Request.QueryString["ID"] + "");
                if (tmpda.Rows.Count > 0)
                {
                        this.txt教师名单.Text = tmpda.Rows[0]["教师"].ToString();
                        this.txt所属专业.Text = tmpda.Rows[0]["专业"].ToString(); 
                }
            }
        }


    }

    /// <summary>
    /// 保存
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        string strErr = "";
        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }


        //根据标志判断是添加还是修改的操作 保存商品信息
        if (Request.QueryString["ID"] != null)
        {
            DataControl.Execute("UPDATE 研究生方向 set 教师 = '" + txt教师名单.Text + "',专业 = '" + txt所属专业.Text + "' WHERE  ID=" + Request.QueryString["ID"]);
        }
        else
        {
            DataControl.Execute("insert into 研究生方向 (教师,专业) values ( '" + txt教师名单.Text + "', '" + txt所属专业.Text + "')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='PYList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("XKJS.aspx");
    }
}
