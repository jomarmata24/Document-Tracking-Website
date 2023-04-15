using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


namespace TrackingWebsite
{
    public partial class register : System.Web.UI.Page
    {
        string pass = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            otpdiv.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox6.Text == "")
            {
                Label9.Text = "Please Fill up the Required field.";
                Label9.Visible = true;
            }
                if (TextBox5.Text == "")
                {
                    Label9.Text = "Please enter an Email.";
                    Label9.Visible = true;
                }

                    try
                    {
                        MySqlConnection con = new MySqlConnection();
                        con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                        con.Open();
                        string insertQuery = "SELECT * FROM registered WHERE name=@name and email=@email";
                        MySqlCommand com = new MySqlCommand(insertQuery, con);
                        com.Parameters.AddWithValue("@name", TextBox1.Text);
                        com.Parameters.AddWithValue("@email", TextBox5.Text);
                        MySqlDataReader reader = com.ExecuteReader();

                        if (reader.Read())
                        {
                            Label9.Text = "The Information You've Entered is Already Registered.";
                            Label9.Visible = true;
                        }
                        else
                        {
                            string email = TextBox5.Text;
                            string OTP = GenerateOTP();

                            // Store the OTP in the database associated with the user's email address
                            try
                            {
                                MySqlConnection con1 = new MySqlConnection();
                                con1.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                con1.Open();
                                string insertQuery1 = "INSERT into registered (email, username) VALUES (@email, @user)";
                                MySqlCommand com1 = new MySqlCommand(insertQuery1, con1);
                                com1.Parameters.AddWithValue("@email", TextBox5.Text);
                                com1.Parameters.AddWithValue("@user", OTP);
                                int v = com1.ExecuteNonQuery();

                                if (v == 1)
                                {
                                    pass = TextBox6.Text;
                                    Label13.Text = pass;
                                    SendOTP(email, OTP);

                                    // Show a message to the user to check their email for the OTP
                            
                                    otpdiv.Visible = true;
                                }
                            }
                            catch (Exception ex)
                            {
                                Response.Write(" " + ex.ToString());
                            }
                            
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(" " + ex.ToString());
                    }

        }
        protected string GenerateOTP()
        {
            string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            string OTP = string.Empty;
            Random random = new Random();

            for (int i = 0; i < 6; i++)
            {
                int index = random.Next(0, characters.Length - 1);
                OTP += characters[index];
            }

            return OTP;
        }

        protected void SendOTP(string email, string OTP)
        {
            
                            MailMessage mail = new MailMessage();
                            SmtpClient SmtpServer = new SmtpClient();
                            SmtpServer.UseDefaultCredentials = false;
                            SmtpServer.Credentials = new System.Net.NetworkCredential("cdmensys2022@gmail.com", "vncxgretraasyjln");
                            SmtpServer.Port = 587;
                            SmtpServer.EnableSsl = true;
                            SmtpServer.Host = "smtp.gmail.com";
                            
                            mail.From = new MailAddress("cdmensys2022@gmail.com");
                            mail.To.Add(email);
                            mail.Subject = "Email Verification OTP";
                            mail.Body = "Your OTP is: " + OTP;

                            
                            
                            
           
                            SmtpServer.Send(mail);


           


        }

        protected void submit_Click1(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con2 = new MySqlConnection();
                con2.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con2.Open();
                string insertQuery2 = "SELECT * FROM registered WHERE email=@email and username=@otp";
                MySqlCommand com2 = new MySqlCommand(insertQuery2, con2);
                com2.Parameters.AddWithValue("@email", TextBox5.Text);
                com2.Parameters.AddWithValue("@otp", TextBox3.Text);
                MySqlDataReader reader2 = com2.ExecuteReader();

                if (reader2.Read())
                {
                    try
                    {
                        MySqlConnection con3 = new MySqlConnection();
                                        con3.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                        con3.Open();
                                        string insertQuery3 = "INSERT into registered (name, contact_no, email, passwd, username) VALUES (@name, @no, @email, @pass, @username)";
                                        MySqlCommand com3 = new MySqlCommand(insertQuery3, con3);
                                        com3.Parameters.AddWithValue("@name", TextBox1.Text);
                                        com3.Parameters.AddWithValue("username", TextBox2.Text);
                                        com3.Parameters.AddWithValue("@no", TextBox4.Text);
                                        com3.Parameters.AddWithValue("@email", TextBox5.Text);
                                        com3.Parameters.AddWithValue("@pass", Label13.Text);
                                        int v = com3.ExecuteNonQuery();

                                        if (v == 1)
                                        {
                                            Response.Write("<script LANGUAGE='JavaScript' >alert('Registered Successfully!')</script>");
                                            TextBox1.Text = string.Empty;
                                            TextBox2.Text = string.Empty;
                                            TextBox4.Text = string.Empty;
                                            TextBox5.Text = string.Empty;
                                            TextBox6.Text = string.Empty;
                                            Label13.Text = string.Empty;
                                            Label9.Visible = false;
                                        }
                                        else
                                        {
                                            Label9.Text = "Please Try Again.";
                                            Label9.Visible = true;
                                            TextBox1.Text = string.Empty;
                                            TextBox2.Text = string.Empty;
                                            TextBox4.Text = string.Empty;
                                            TextBox5.Text = string.Empty;
                                            TextBox6.Text = string.Empty;
                                            Label13.Text = string.Empty;
                                        }
                                        con3.Close();
                                    }
                                    catch (Exception ex)
                                    {
                                        Response.Write(" " + ex.ToString());
                                    }

                }
                else
                {
                    Label12.Text = "Incorrect OTP";
                    Label12.Visible = true;
                    TextBox3.Text = string.Empty;
                }
                con2.Close();
            }
            catch (Exception ex)
            {
                Response.Write(" " + ex.ToString());
            }
        }

       
    }
}