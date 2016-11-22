using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
 

public partial class FramePage_Top :PageBase 
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!Page.IsPostBack)
        {

            string date = DateTime.Now.ToShortDateString();
                string today=Convert.ToDateTime(date).ToString("yyyy年MM月dd日");//今天年月日

                string week =  GetWeedNumber(Convert.ToDateTime(date).DayOfWeek.ToString());//星期
                int hour = int.Parse(Convert.ToDateTime(date).ToString("HH"));
                string apm = string.Empty;
                if (hour > 12)
                {
                    apm = "下午";
                }
                else
                {
                    apm = "上午";
                }
                
                this.lbltitle.Text = string.Format("您好：{0}　今天是{1}　星期{2}　{3}{4} ", "管理员", today, week, apm, "");
          
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.parent.location.href='../index.html';</script>");
    }
}
