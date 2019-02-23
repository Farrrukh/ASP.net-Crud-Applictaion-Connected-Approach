using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
[System.Runtime.InteropServices.ComVisible(true)]
[System.Serializable]

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddCoustomer_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        SqlCommand comm = new SqlCommand("Insert into Student (Name,Email,Address,ContactNo) values ('"+txtCoustomerName.Text+"','"+txtCoustomerEmail.Text+"','"+txtCoustomerAddress.Text+"','"+txtContactNo.Text+"') ",conn);

        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();

        lblMessage.Text = "Student Added Successfully";

        txtContactNo.Text = txtCoustomerAddress.Text = txtCoustomerName.Text = txtCoustomerEmail.Text;
        GridView1.DataBind();


    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection conn = null;
        try
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

            SqlCommand comm = new SqlCommand("select * from student where id=" + ListBox1.Text,conn);

            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();

            while (reader.Read())
            {
                txtCoustomerAddress.Text = reader["Address"].ToString();
                txtContactNo.Text = reader["ContactNo"].ToString();
                txtCoustomerEmail.Text = reader["Email"].ToString();
                txtCoustomerName.Text = reader["Name"].ToString();
            }
        }
        catch (Exception E)
        {
            Console.WriteLine("OOPs, something went wrong." + E);
        }
        finally
        {
            conn.Close();
            btnAddCoustomer.Visible = false;
            BtnUpdateCustomer.Visible = true;
        }
    }
    protected void btnUpdateCoustomer_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        SqlCommand  comm =new SqlCommand("Update Student set Name = '"+txtCoustomerName.Text+"',Email ='"+txtCoustomerEmail.Text+"' ,Address='"+txtCoustomerAddress.Text+"',ContactNo='"+txtContactNo.Text+"' where id="+ListBox1.SelectedValue+"",conn);

            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();


    }
    protected void Btddlt_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        SqlCommand comm = new SqlCommand("Delete from Student where id =" + ListBox1.SelectedValue, conn);
        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        lblMessage.Text = "Delete Record Successfully";

        GridView1.DataBind();
        ListBox1.DataBind();
        btnAddCoustomer.Visible=false;
        BtnUpdateCustomer.Visible=true;
        Btddlt.Visible=true;
    }
}