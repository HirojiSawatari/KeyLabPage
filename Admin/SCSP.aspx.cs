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
            Session.Remove("videoname");
                //显示当前的商品信息
            DataTable tmpda = new DataTable();
            tmpda = DataControl.GetData("select * from 视频");
            if (tmpda.Rows.Count > 0)
            {
                Session["videoname"] = tmpda.Rows[0]["视频"].ToString();
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
        //string FileName = "";
        //string FileName1;
        //string DPath;
        //DPath = Server.MapPath("..") + @"\";
        //DPath = DPath + @"video\";
        //if (this.FileUpload1.PostedFile.FileName != "")
        //{
            //string[] temp = this.FileUpload1.PostedFile.FileName.Split('.');
            //string strHzm = "." + temp[temp.Length - 1];

            //Guid tmp = Guid.NewGuid();
            //FileName = tmp.ToString() + strHzm;
            //FileName1 = DPath + tmp.ToString() + strHzm;
            //this.FileUpload1.PostedFile.SaveAs(FileName1);
            //if (Session["videoname"] != null)
            //{
                //if (File.Exists(DPath + Session["videoname"].ToString()))
                //{
                   // File.Delete(DPath + Session["videoname"].ToString());
                //}
            //}
        //}
        //DataControl.Execute("UPDATE 视频 set 视频 = '" + FileName + "' WHERE  编号=1");
        Image1.ImageUrl = "~/image/test.jpg";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "info", "<script>alert('保存成功！')</script>");
        //Response.Write();
    }

}
