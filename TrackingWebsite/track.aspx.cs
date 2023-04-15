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
    public partial class track : System.Web.UI.Page
    {
        public static string txtInput = string.Empty;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (track_login.home =="1")
            {
                Response.Redirect("track_login.aspx");
            }

        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("track.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtInput = TextBox1.Text;
            Label7.Text = "";
            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con.Open();
                string insertQuery = "SELECT * FROM request WHERE tracking_no=@code";
                MySqlCommand com = new MySqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@code", TextBox1.Text);
                MySqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    Response.Redirect("trackingpage.aspx");
                }
                else
                {
                    try
                    {
                        MySqlConnection con1 = new MySqlConnection();
                        con1.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                        con1.Open();
                        string insertQuery1 = "SELECT * FROM received WHERE tracking_no=@code";
                        MySqlCommand com1 = new MySqlCommand(insertQuery1, con1);
                        com1.Parameters.AddWithValue("@code", TextBox1.Text);
                        MySqlDataReader reader1 = com1.ExecuteReader();
                        if (reader1.Read())
                        {
                            Response.Redirect("trackingpage.aspx");
                            con1.Close();
                        }
                        else
                        {
                            try
                            {
                                MySqlConnection con2 = new MySqlConnection();
                                con2.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                con2.Open();
                                string insertQuery2 = "SELECT * FROM processing WHERE tracking_no=@code";
                                MySqlCommand com2 = new MySqlCommand(insertQuery2, con2);
                                com2.Parameters.AddWithValue("@code", TextBox1.Text);
                                MySqlDataReader reader2 = com2.ExecuteReader();
                                if (reader2.Read())
                                {
                                    Response.Redirect("trackingpage.aspx");
                                    con2.Close();
                                }
                                else
                                {
                                    try
                                    {
                                        MySqlConnection con3 = new MySqlConnection();
                                        con3.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                        con3.Open();
                                        string insertQuery3 = "SELECT * FROM to_claim WHERE tracking_no=@code";
                                        MySqlCommand com3 = new MySqlCommand(insertQuery3, con3);
                                        com3.Parameters.AddWithValue("@code", TextBox1.Text);
                                        MySqlDataReader reader3 = com3.ExecuteReader();
                                        if (reader3.Read())
                                        {
                                            Response.Redirect("trackingpage.aspx");
                                            con3.Close();
                                        }
                                        else
                                        {
                                            try
                                            {
                                                MySqlConnection con4 = new MySqlConnection();
                                                con4.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                                con4.Open();
                                                string insertQuery4 = "SELECT * FROM history WHERE tracking_no=@code";
                                                MySqlCommand com4 = new MySqlCommand(insertQuery4, con4);
                                                com4.Parameters.AddWithValue("@code", TextBox1.Text);
                                                MySqlDataReader reader4 = com4.ExecuteReader();
                                                if (reader4.Read())
                                                {
                                                    Response.Redirect("trackingpage.aspx");
                                                    con4.Close();
                                                }
                                                else
                                                {
                                                    Label7.Visible = true;
                                                    Label7.Text = "Invalid Tracking Number!";

                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write("" + ex.ToString());
                                            }

                                        }
                                    }
                                    catch (Exception ex)
                                    {
                                        Response.Write("" + ex.ToString());
                                    }
                                }
                            }
                            catch (Exception ex)
                            {
                                Response.Write("" + ex.ToString());
                            }

                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("" + ex.ToString());
                    }

                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.ToString());
            }
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            
                
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("forms.aspx");
        }

        
    }
}