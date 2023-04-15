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
    public partial class login : System.Web.UI.Page
    {
        public static string txtInput = string.Empty;
        public static string txtInput1 = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtInput = TextBox1.Text;
            txtInput1 = TextBox2.Text;
            track_login.home = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("track.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con.Open();  
                string insertQuery = "SELECT * FROM registered WHERE username=@user";
                MySqlCommand com = new MySqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@user", TextBox1.Text);
                MySqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    try
                    {
                        MySqlConnection con1 = new MySqlConnection();
                        con1.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                        con1.Open();
                        string insertQuery1 = "SELECT * FROM registered WHERE passwd=@pass";
                        MySqlCommand com1 = new MySqlCommand(insertQuery1, con1);
                        com1.Parameters.AddWithValue("@pass", TextBox2.Text);
                        MySqlDataReader reader1 = com1.ExecuteReader();
                        if (reader1.Read())
                        {
                            Response.Write("<script LANGUAGE='JavaScript' >alert('Successfully Login!')</script>");
                            TextBox1.Text = string.Empty;
                            TextBox2.Text = string.Empty;
                            Response.Redirect("loginview.aspx");

                        }
                        else
                        {
                            Label4.Text = "Incorrect Password!";
                        }
                        con1.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(" " + ex.ToString());
                    }
                }
                else
                {
                    Label4.Text = "Incorrect Username!";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
            }

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label4.Text = string.Empty;
            TextBox1.Text = string.Empty;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("forms.aspx");
        }
    }

}