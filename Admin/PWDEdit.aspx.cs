using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;



/// <summary>
/// 密码修改
/// </summary>
public partial class ADMIN_PWDEdit:PageBase
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

     

   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ////校验阶段

        if (this.txtPassword.Text != this.txtPassword1.Text)
        {
            this.lblMsg.Text = "两次输入的密码不一致！";
            return;
        }
        DataControl.Execute("update 管理员 set 密码='" + this.txtPassword1.Text + "'");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "test", "<script >alert('修改成功!');</script > ");


    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}
