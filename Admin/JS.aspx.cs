using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_JS : PageBase
{
		protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            //绑定类别列表
            Session.Remove("imgname");
            if (Request.QueryString["ID"] != null)
            {
                //显示当前的商品信息
                DataTable tmpda = new DataTable();
                tmpda = DataControl.GetData("select * from 教授 where  ID=" + Request.QueryString["ID"] + "");
                if (tmpda.Rows.Count > 0)
                {
                        this.txt名称.Text = tmpda.Rows[0]["名称"].ToString(); 
                        this.txt介绍.Text = tmpda.Rows[0]["介绍"].ToString(); 
                        Session["imgname"] = tmpda.Rows[0]["图片"].ToString();
                        this.RadioButtonList1.Text = tmpda.Rows[0]["职称"].ToString();
                        
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
        if (this.txt名称.Text == "")
        {
            strErr += "名称不能为空！\\n";
        }

        if (strErr != "")
        {
            ResponseMessage(this, strErr);
            return;
        }
        //将相关的图片上传到@"Image\"路径下
        string FileName = "";
        string FileName1;
        string DPath;
        DPath = Server.MapPath("..") + @"\";
        DPath = DPath + @"image\";
        if (this.FileUpload1.PostedFile.FileName != "")
        {
            string[] temp = this.FileUpload1.PostedFile.FileName.Split('.');
            string strHzm = "." + temp[temp.Length - 1];

            Guid tmp = Guid.NewGuid();
            FileName = tmp.ToString() + strHzm;
            FileName1 = DPath + tmp.ToString() + strHzm;
            this.FileUpload1.PostedFile.SaveAs(FileName1);
            if (Session["imgname"] != null)
            {
                if (File.Exists(DPath + Session["imgname"].ToString()))
                {
                    File.Delete(DPath + Session["imgname"].ToString());
                }
            }
        }
        //根据标志判断是添加还是修改的操作 保存商品信息
        if (Request.QueryString["ID"] != null)
        {
            if (FileName == "")
            {
                DataControl.Execute("UPDATE 教授 set 名称 = '" + txt名称.Text + "',介绍 = '" + txt介绍.Text + "',职称 = '" + RadioButtonList1.SelectedValue + "'  WHERE  ID=" + Request.QueryString["ID"]);
            }
            else
            {
                DataControl.Execute("UPDATE 教授 set 名称 = '" + txt名称.Text + "',介绍 = '" + txt介绍.Text + "',图片 = '" + FileName + "',职称 = '" + RadioButtonList1.SelectedValue + "' WHERE  ID=" + Request.QueryString["ID"]);
            }
        }
        else
        {
            DataControl.Execute("insert into 教授 (名称,介绍,图片,职称) values (  '" + txt名称.Text + "', '" + txt介绍.Text + "', '" + FileName + "', '" + RadioButtonList1.SelectedValue + "')");
        }
        
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！');window.location.href='JSList.aspx';</script>");
    }

    protected void btnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("JSList.aspx");
    }
}
