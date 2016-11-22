using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Admin_SYS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dt = DataControl.GetData("select * from 实验室介绍 ");
            if (dt.Rows.Count > 0)
            {
                this.txt内容.Text = dt.Rows[0]["内容"] + "";
                this.txt主题.Text = dt.Rows[0]["主题"] + "";
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpload1.PostedFile.FileName == "")
        {
            return;
        }
        DataControl.Execute("update 实验室介绍 set 图片1='" + Upload(this.FileUpload1) + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('已经上传！');</script>");
    }


    protected string Upload(System.Web.UI.WebControls.FileUpload f)
    {
        string FileName = "";
        string FileName1;
        string DPath;
        DPath = Server.MapPath("..") + @"\";
        DPath = DPath + @"image\";
        if (f.PostedFile.FileName != "")
        {
            string[] temp = f.PostedFile.FileName.Split('.');
            string strHzm = "." + temp[temp.Length - 1];

            Guid tmp = Guid.NewGuid();
            FileName = tmp.ToString() + strHzm;
            FileName1 = DPath + tmp.ToString() + strHzm;
            f.PostedFile.SaveAs(FileName1);
            return FileName;
        }
        return "";
    }
    protected void btnAdd_Click(object sender, ImageClickEventArgs e)
    {
        DataControl.Execute("update 实验室介绍 set 主题='" + this.txt主题.Text + "',内容='" + txt内容.Text + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('已经上传！'); </script>");

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpload2.PostedFile.FileName == "")
        {
            return;
        }
        DataControl.Execute("update 实验室介绍 set 图片2='" + Upload(this.FileUpload2) + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('已经上传！'); </script>");

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpload3.PostedFile.FileName == "")
        {
            return;
        }
        DataControl.Execute("update 实验室介绍 set 图片3='" + Upload(this.FileUpload3) + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('已经上传！');</script>");

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        if (this.FileUpload4.PostedFile.FileName == "")
        {
            return;
        }
        DataControl.Execute("update 实验室介绍 set 图片4='" + Upload(this.FileUpload4) + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('已经上传！');</script>");

    }
}

