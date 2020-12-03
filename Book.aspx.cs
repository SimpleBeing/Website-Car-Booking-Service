using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : Page
{
    private readonly SqlConnection sConn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True;AttachDbFilename=|DataDirectory|\Database.mdf;");
    private SqlCommand sCmd;
    private DataSet dSet;
    private SqlDataAdapter dAdapter = new SqlDataAdapter();
    private string key;
	
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            lblInfo.Text = "Welcome " + User.Identity.Name+" !";
            Panel1.Visible = true;
            key = User.Identity.GetUserId();
            LoadTable();
            tb1.Text = User.Identity.Name;
        }
        else
        {
            lblInfo.Text = "Please login Before you can Book";
        }
    }

    public void Clear()
    {
        DropDownList1.SelectedIndex = 0;
        tb1.Text = User.Identity.Name;
        tb2.Text = "";
        tb3.Text = "";
        tb4.Text = "";
        tb5.Text = "";
        tb6.Text = "";
        tb7.Text = "";
        tb8.Text = "";
        tb9.Text = "";
        tb10.Text = "";
    }

    protected void BtnBook_Click(object sender, EventArgs e)
    {
        try
        {
            Boolean save1=false, save2 = false, save3 = false;
            if(tb4.Text.Contains("@") && tb4.Text.Contains(".com"))
            {
                lblEmailError.Visible = false;
                save1 = true;
            }
            else
            {
                lblEmailError.Text = "Incorrect Email added";
                lblEmailError.Visible = true;
                save1 = false;
            }

            try
            {
                lblKMError.Visible = false;
                double d = Double.Parse(tb9.Text);
                save2 = true;
            }catch (Exception)
            {
                lblKMError.Visible = true;
                save2 = false;
            }

            try
            {
                lblDateError.Visible = false;
                double d = Double.Parse(tb7.Text);
                save3 = true;
            }
            catch (Exception)
            {
                lblDateError.Visible = true;
                save3 = false;
            }
            if (save1 == true && save2 == true && save3 == true)
            {
                sConn.Open();
                SqlCommand dbCMB = sConn.CreateCommand();
                dbCMB = new SqlCommand("INSERT INTO WorkShop Values ('" + key + "','"
                    + DropDownList1.Text + "','" + tb1.Text + "','" + tb2.Text + "','" + tb3.Text + "','"
                    + tb4.Text + "','" + tb5.Text + "','" + tb6.Text + "','"
                    + tb7.Text + "','" + tb8.Text + "','" + tb9.Text + "','" + tb10.Text + "')", sConn);
                dbCMB.ExecuteNonQuery();
                sConn.Close();

                lblInfo.Text = "Request Saved";
                LoadTable();
                Clear();
            }
        }
        catch (Exception ex)
        {
            lblInfo.Text = ex.Message;
            lblInfo.Visible = true;
        }
    }

    public void LoadTable()
    {
        sConn.Open();
        sCmd = new SqlCommand("Select * From  WorkShop Where Id = '" + key + "'", sConn);
        sCmd.ExecuteNonQuery();
        dAdapter.SelectCommand = sCmd;
        dSet = new DataSet();
        dAdapter.Fill(dSet);
        gvTables.DataSourceID = "";
        gvTables.DataSource = dSet;

        gvTables.DataBind();
        sConn.Close();
    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        sConn.Open();
        SqlCommand dbCMB = sConn.CreateCommand();
        dbCMB = new SqlCommand("DELETE From  WorkShop Where Id = '" + key + "'", sConn);
        dbCMB.ExecuteNonQuery();
        sConn.Close();
        LoadTable();
        gvTables.Visible = true;
    }
}