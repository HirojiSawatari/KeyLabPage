using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

/// <summary>
/// DataBase 的摘要说明
/// </summary>
public class DataControl
{
	public DataControl()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static OleDbConnection createConnection()
    {
        //数据库连接字符串
        OleDbConnection cnn;
        if (System.Web.HttpContext.Current.Server.MapPath("").Substring(System.Web.HttpContext.Current.Server.MapPath("").Length - 5).ToLower() != "admin" && System.Web.HttpContext.Current.Server.MapPath("").Substring(System.Web.HttpContext.Current.Server.MapPath("").Length - 4).ToLower() != "gzry")
        {
            cnn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=" + System.Web.HttpContext.Current.Server.MapPath("") + @"\news_pgg.mdb");
        }
        else
        {
            cnn = new OleDbConnection("PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=" + System.Web.HttpContext.Current.Server.MapPath("../") + @"\news_pgg.mdb");
        }
        return cnn;
    }
    public static DataTable GetData(string sqlStr)
    {
        //定义数据库连接　将要查询的数据集　填充到DataSet中
        OleDbConnection tmpCnn = DataControl.createConnection();
        if (tmpCnn.State != 0)
        {
            tmpCnn.Close();
        }
        tmpCnn.Open();
        OleDbDataAdapter  cmd = new OleDbDataAdapter(sqlStr, tmpCnn);
        DataSet tmpDataSet = new DataSet();
        cmd.Fill(tmpDataSet);
        tmpCnn.Close();
        return tmpDataSet.Tables[0];
    }

    public static void Execute(string sqlStr)
    {
        //定义数据库连接　　执行数据库的增加　修改和删除数据的功能
        OleDbConnection tmpCnn = DataControl.createConnection();
        if (tmpCnn.State != 0)
        {
            tmpCnn.Close();
        }
        tmpCnn.Open();

        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = sqlStr;
        cmd.Connection = tmpCnn;
        cmd.ExecuteNonQuery();
        tmpCnn.Close();

    }

    //public static string GetText(string strText, int intLen)
    //{
    //    //如果参数大于指定的长度  则省略显示
    //    if (strText.Length > intLen)
    //    {
    //        return strText.Substring(0, intLen) + "...";
    //    }
    //    else
    //    {
    //        return strText;
    //    }
    //}
}
