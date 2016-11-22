using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_ACEINFO : PageBase
{


  	protected void Page_Load(object sender, EventArgs e)
    {
         //在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表
            if (Request.QueryString["编号"] != null)
            {
                //显示当前的商品信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from news where  编号=" + Request.QueryString["编号"] + "");
                if (tmpda.Rows.Count > 0)
                {
                        this.txt1.Text = tmpda.Rows[0]["标题"].ToString();
                        this.txt2.Text = tmpda.Rows[0]["路径"].ToString(); 
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
        if (Request.QueryString["编号"] != null)
        {
            DataControl.Execute("UPDATE news set 标题 = '" + txt1.Text + "',路径 = '" + txt2.Text + "' WHERE  编号=" + Request.QueryString["编号"]);
        }
        else
        {
            DataControl.Execute("insert into news (标题,路径) values ( '" + txt1.Text + "', '" + txt2.Text + "')");

        }
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='ACEINFOList.aspx';</script>");




    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ACEINFO.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
