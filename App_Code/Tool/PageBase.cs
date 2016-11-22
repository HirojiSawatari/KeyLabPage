using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


/// <summary>
///PageBase 的摘要说明
/// </summary>
public class PageBase:Page
{
	public PageBase()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
    }

    #region 窗口的弹出
    /// <summary>
    /// 打开窗口
    /// 修改目的:	新开页面去掉ie的菜单。。。						*/
    /// </summary>
    /// <param name="url"></param>
    public static void OpenWebForm(string url)
    {
        HttpContext.Current.Response.Redirect(url);
    }


   


    #endregion

    #region 消息提示
    /// <summary>
    /// 弹出JavaScript小窗口
    /// </summary>
    /// <param name="js">窗口信息</param>
    public static void Alert(string message)
    {
        message = DeleteUnVisibleChar(message);
        string js = @"<Script language='JavaScript'>
                    alert('" + message + "');</Script>";
        HttpContext.Current.Response.Write(js);
    }

    /// <summary>
    /// 显示错误信息 
    /// </summary>
    /// <param name="page">页面</param>
    /// <param name="strMessage">信息</param>
    public static void ResponseMessage(System.Web.UI.Page page, string strMessage)
    {

        strMessage = strMessage.Replace("'", "").Replace("\"", "").Replace("\r\n", "");
        page.ClientScript.RegisterStartupScript(page.GetType(), "ErrorMessage", "<script language='javascript' defer>window.alert('" + strMessage + "');</script>");

    }

    #endregion

    #region 工具
    /// <summary>
    /// 删除不可见字符
    /// </summary>
    /// <param name="sourceString"></param>
    /// <returns></returns>
    public static string DeleteUnVisibleChar(string sourceString)
    {
        System.Text.StringBuilder sBuilder = new System.Text.StringBuilder(131);
        for (int i = 0; i < sourceString.Length; i++)
        {
            int Unicode = sourceString[i];
            if (Unicode >= 16)
            {
                sBuilder.Append(sourceString[i].ToString());
            }
        }
        return sBuilder.ToString();
    }

    /// <summary>
    /// 星期转换
    /// </summary>
    /// <param name="week"></param>
    /// <returns></returns>
    public static string GetWeedNumber(string week)
    {
        string weeknumber = string.Empty;
        switch (week)
        {
            case "Monday":
                weeknumber = "一";
                break;
            case "Tuesday":
                weeknumber = "二";
                break;
            case "Wednesday":
                weeknumber = "三";
                break;
            case "Thursday":
                weeknumber = "四";
                break;
            case "Friday":
                weeknumber = "五";
                break;
            case "Saturday":
                weeknumber = "六";
                break;
            case "Sunday":
                weeknumber = "日";
                break;

        }
        return weeknumber;
    }

    public void DownUrl(string strUrl)
    {
        string path = strUrl;
        string name = "FileName";
        System.IO.FileInfo file = new System.IO.FileInfo(path);
        if (file.Exists)
        {
            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + HttpUtility.UrlEncode(System.Text.UTF8Encoding.UTF8.GetBytes(name)));
            Response.AddHeader("Content-Length", file.Length.ToString());

            Response.ContentType = "application/octet-stream";
            Response.Filter.Close();

            Response.WriteFile(file.FullName);
            Response.End();
        }
        else
        {
            ResponseMessage(this, "文件不存在！");
        }
    }
    #endregion

   

}
