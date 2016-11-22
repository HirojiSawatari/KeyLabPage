using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing;

public partial class Admin_Default : System.Web.UI.Page
{
    public OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = DataControl.createConnection();
        conn.Open();
        Random Random1 = new Random();
        captcha.num[captcha.i] = Random1.Next(1, 11);
        OleDbCommand cmd = new OleDbCommand("select photo from Captcha where num="+ captcha.num[captcha.i] +"",conn);
        OleDbDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string url = reader[0].ToString();
        Image1.ImageUrl = url;
        captcha.i++; 
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string code = Textbox1.Text.Trim();
        OleDbCommand cmd2 = new OleDbCommand("select text from Captcha where num=" + captcha.num[captcha.i-2] + "", conn);
        OleDbDataReader reader2 = cmd2.ExecuteReader();
        reader2.Read();
        string text1 = reader2["text"].ToString();
        if (code == text1)
        {
            if (DataControl.GetData("select * from 管理员 where 用户名='" + txtPassword.Text + "' and  密码='" + txtPassword1.Text + "'").Rows.Count > 0)
            {
                Response.Redirect("index.aspx");
                conn.Close();
            }
            else
            {
                this.lblMsg.Text = "　　　* 用户名或密码错误";
            }
        }
        else 
        {
            this.lblMsg.Text = "　　　* 验证码错误";
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        txtPassword.Text = "";
        txtPassword1.Text = "";
    }
}