using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class label : System.Web.UI.Page
{
    public OleDbConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strConnection = "Provider=Microsoft.Jet.OLEDB.4.0;";
        strConnection += @"Data Source='" + MapPath("news_pgg.mdb") + "'";
        OleDbConnection objConnection = new OleDbConnection(strConnection);
        objConnection.Open();
        String adapt = "select * from news";
        OleDbDataAdapter m_adapter = new OleDbDataAdapter(adapt, objConnection);
        DataTable table1 = new DataTable();
        m_adapter.Fill(table1);
        if (table1.Rows.Count >= 1)
        {
            HyperLink1.Text = table1.Rows[table1.Rows.Count - 1][1].ToString();
            HyperLink1.NavigateUrl = table1.Rows[table1.Rows.Count - 1][2].ToString();
        }
        else { HyperLink1.Text = ""; HyperLink1.NavigateUrl = ""; }
        if (table1.Rows.Count >= 2)
        {
            HyperLink2.Text = table1.Rows[table1.Rows.Count - 2][1].ToString();
            HyperLink2.NavigateUrl = table1.Rows[table1.Rows.Count - 2][2].ToString();
        }
        else { HyperLink2.Text = ""; HyperLink2.NavigateUrl = ""; }
        if (table1.Rows.Count >= 3)
        {
            HyperLink3.Text = table1.Rows[table1.Rows.Count - 3][1].ToString();
            HyperLink3.NavigateUrl = table1.Rows[table1.Rows.Count - 3][2].ToString();
        }
        else { HyperLink3.Text = ""; HyperLink3.NavigateUrl = ""; }
        if (table1.Rows.Count >= 4)
        {
            HyperLink4.Text = table1.Rows[table1.Rows.Count - 4][1].ToString();
            HyperLink4.NavigateUrl = table1.Rows[table1.Rows.Count - 4][2].ToString();
        }
        else { HyperLink4.Text = ""; HyperLink4.NavigateUrl = ""; }
        if (table1.Rows.Count >= 5)
        {
            HyperLink5.Text = table1.Rows[table1.Rows.Count - 5][1].ToString();
            HyperLink5.NavigateUrl = table1.Rows[table1.Rows.Count - 5][2].ToString();
        }
        else { HyperLink5.Text = ""; HyperLink5.NavigateUrl = ""; }
        if (table1.Rows.Count >= 6)
        {
            HyperLink6.Text = table1.Rows[table1.Rows.Count - 6][1].ToString();
            HyperLink6.NavigateUrl = table1.Rows[table1.Rows.Count - 6][2].ToString();
        }
        else { HyperLink6.Text = ""; HyperLink6.NavigateUrl = ""; }
        if (table1.Rows.Count >= 7)
        {
            HyperLink7.Text = table1.Rows[table1.Rows.Count - 7][1].ToString();
            HyperLink7.NavigateUrl = table1.Rows[table1.Rows.Count - 7][2].ToString();
        }
        else { HyperLink7.Text = ""; HyperLink7.NavigateUrl = ""; }
        if (table1.Rows.Count >= 8)
        {
            HyperLink8.Text = table1.Rows[table1.Rows.Count - 8][1].ToString();
            HyperLink8.NavigateUrl = table1.Rows[table1.Rows.Count - 8][2].ToString();
        }
        else { HyperLink8.Text = ""; HyperLink8.NavigateUrl = ""; }
        if (table1.Rows.Count >= 9)
        {
            HyperLink9.Text = table1.Rows[table1.Rows.Count - 9][1].ToString();
            HyperLink9.NavigateUrl = table1.Rows[table1.Rows.Count - 9][2].ToString();
        }
        else { HyperLink9.Text = ""; HyperLink9.NavigateUrl = ""; }
        if (table1.Rows.Count >= 10)
        {
            HyperLink10.Text = table1.Rows[table1.Rows.Count - 10][1].ToString();
            HyperLink10.NavigateUrl = table1.Rows[table1.Rows.Count - 10][2].ToString();
        }
        else { HyperLink10.Text = ""; HyperLink10.NavigateUrl = ""; }

        objConnection.Close();
    }
}