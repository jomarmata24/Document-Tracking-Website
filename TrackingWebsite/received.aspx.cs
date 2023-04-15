using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace TrackingWebsite
{
    public partial class received : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = login.txtInput;
            var pass = login.txtInput1;

            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con.Open();
                string insertQuery = "SELECT * FROM registered WHERE username=@user and passwd=@pass";
                MySqlCommand com = new MySqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@user", user);
                com.Parameters.AddWithValue("@pass", pass);
                MySqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Text = reader["ID"].ToString();
                    Label2.Text = reader["name"].ToString();
                    username.Text = reader["username"].ToString();
                    Contact.Text = reader["contact_no"].ToString();
                    email.Text = reader["email"].ToString();

                    con.Close();
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
            }
            if (GridView1.Rows.Count == 0)
            {
                Image1.Visible = true;
                empty.Visible = true;
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("loginview.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }
    }
}