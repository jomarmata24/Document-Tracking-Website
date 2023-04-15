using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls;

namespace TrackingWebsite
{
    public partial class trackingpage_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getloginValue = string.Empty;
            getloginValue = track_login.txtInput;
            trackingno.Text = getloginValue;

            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con.Open();
                string insertQuery = "SELECT * FROM request WHERE tracking_no=@code";
                MySqlCommand com = new MySqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@code", trackingno.Text);
                MySqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    code.Text = reader["tracking_no"].ToString();
                    document.Text = reader["doc_type"].ToString();
                    statuslabel.Text = "You Made a Request";
                    details.Text = "Your request is waiting for admin to receive.";

                    con.Close();
                }
                else
                {
                    try
                    {
                        MySqlConnection con1 = new MySqlConnection();
                        con1.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                        con1.Open();
                        string insertQuery1 = "SELECT * FROM received WHERE tracking_no=@code and status='REJECTED'";
                        MySqlCommand com1 = new MySqlCommand(insertQuery1, con1);
                        com1.Parameters.AddWithValue("@code", trackingno.Text);
                        MySqlDataReader reader1 = com1.ExecuteReader();
                        if (reader1.Read())
                        {
                            code.Text = reader1["tracking_no"].ToString();
                            document.Text = reader1["doc_type"].ToString();
                            statuslabel.Text = reader1["status"].ToString();
                            details.Text = "Your request has been rejected. Kindly check your email for more information. Note:" + reader1["note"];


                        }
                        else
                        {
                            try
                            {
                                MySqlConnection con2 = new MySqlConnection();
                                con2.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                con2.Open();
                                string insertQuery2 = "SELECT * FROM received WHERE tracking_no=@code and status=''";
                                MySqlCommand com2 = new MySqlCommand(insertQuery2, con2);
                                com2.Parameters.AddWithValue("@code", trackingno.Text);
                                MySqlDataReader reader2 = com2.ExecuteReader();
                                if (reader2.Read())
                                {
                                    code.Text = reader2["tracking_no"].ToString();
                                    document.Text = reader2["doc_type"].ToString();
                                    statuslabel.Text = "RECEIVED";
                                    details.Text = "Your request has been received. Kindly bring the needed requirements. Check your email for more information.";


                                }
                                else
                                {
                                    try
                                    {
                                        MySqlConnection con3 = new MySqlConnection();
                                        con3.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                        con3.Open();
                                        string insertQuery3 = "SELECT * FROM received WHERE tracking_no=@code and status='COMPLETE'";
                                        MySqlCommand com3 = new MySqlCommand(insertQuery3, con3);
                                        com3.Parameters.AddWithValue("@code", trackingno.Text);
                                        MySqlDataReader reader3 = com3.ExecuteReader();
                                        if (reader3.Read())
                                        {
                                            code.Text = reader3["tracking_no"].ToString();
                                            document.Text = reader3["doc_type"].ToString();
                                            statuslabel.Text = "Requirements Completed";

                                            step1.Attributes["class"] = "active";
                                            slabel1.Attributes["class"] = "active";


                                        }
                                        else
                                        {
                                            try
                                            {
                                                MySqlConnection con4 = new MySqlConnection();
                                                con4.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                                con4.Open();
                                                string insertQuery4 = "SELECT * FROM processing WHERE tracking_no=@code";
                                                MySqlCommand com4 = new MySqlCommand(insertQuery4, con4);
                                                com4.Parameters.AddWithValue("@code", trackingno.Text);
                                                MySqlDataReader reader4 = com4.ExecuteReader();
                                                if (reader4.Read())
                                                {
                                                    code.Text = reader4["tracking_no"].ToString();
                                                    document.Text = reader4["doc_type"].ToString();
                                                    statuslabel.Text = "PROCESSING";

                                                    step1.Attributes["class"] = "active";
                                                    slabel1.Attributes["class"] = "active";
                                                    step2.Attributes["class"] = "active";
                                                    slabel2.Attributes["class"] = "active";


                                                }
                                                else
                                                {
                                                    try
                                                    {
                                                        MySqlConnection con5 = new MySqlConnection();
                                                        con5.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                                        con5.Open();
                                                        string insertQuery5 = "SELECT * FROM to_claim WHERE tracking_no=@code";
                                                        MySqlCommand com5 = new MySqlCommand(insertQuery5, con5);
                                                        com5.Parameters.AddWithValue("@code", trackingno.Text);
                                                        MySqlDataReader reader5 = com5.ExecuteReader();
                                                        if (reader5.Read())
                                                        {
                                                            code.Text = reader5["tracking_no"].ToString();
                                                            document.Text = reader5["doc_type"].ToString();
                                                            statuslabel.Text = "TO CLAIM";
                                                            details.Text = "Your document is ready to be claim.";

                                                            step1.Attributes["class"] = "active";
                                                            slabel1.Attributes["class"] = "active";
                                                            step2.Attributes["class"] = "active";
                                                            slabel2.Attributes["class"] = "active";
                                                            step3.Attributes["class"] = "active";
                                                            slabel3.Attributes["class"] = "active";



                                                        }
                                                        else
                                                        {
                                                            try
                                                            {
                                                                MySqlConnection con6 = new MySqlConnection();
                                                                con6.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                                                con6.Open();
                                                                string insertQuery6 = "SELECT * FROM history WHERE tracking_no=@code and status='COMPLETED'";
                                                                MySqlCommand com6 = new MySqlCommand(insertQuery6, con6);
                                                                com6.Parameters.AddWithValue("@code", trackingno.Text);
                                                                MySqlDataReader reader6 = com6.ExecuteReader();
                                                                if (reader6.Read())
                                                                {
                                                                    code.Text = reader6["tracking_no"].ToString();
                                                                    document.Text = reader6["doc_type"].ToString();
                                                                    statuslabel.Text = "COMPLETED";
                                                                    details.Text = "Your Document has been claimed. Thankyou!";

                                                                    step1.Attributes["class"] = "active";
                                                                    slabel1.Attributes["class"] = "active";
                                                                    step3.Attributes["class"] = "active";
                                                                    slabel3.Attributes["class"] = "active";
                                                                    step2.Attributes["class"] = "active";
                                                                    slabel2.Attributes["class"] = "active";
                                                                    step4.Attributes["class"] = "active";
                                                                    slabel4.Attributes["class"] = "active";



                                                                }
                                                                else
                                                                {
                                                                    try
                                                                    {
                                                                        MySqlConnection con7 = new MySqlConnection();
                                                                        con7.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                                                                        con7.Open();
                                                                        string insertQuery7 = "SELECT * FROM history WHERE tracking_no=@code and status='REJECTED'";
                                                                        MySqlCommand com7 = new MySqlCommand(insertQuery7, con7);
                                                                        com7.Parameters.AddWithValue("@code", trackingno.Text);
                                                                        MySqlDataReader reader7 = com7.ExecuteReader();
                                                                        if (reader7.Read())
                                                                        {
                                                                            code.Text = reader7["tracking_no"].ToString();
                                                                            document.Text = reader7["doc_type"].ToString();
                                                                            statuslabel.Text = reader7["status"].ToString();
                                                                            details.Text = "Your request has been rejected. Kindly check your email for more information. Note:" + reader7["note"];



                                                                        }
                                                                        else
                                                                        {


                                                                        }

                                                                        con7.Close();
                                                                    }
                                                                    catch (Exception ex)
                                                                    {
                                                                        Response.Write("" + ex.ToString());
                                                                    }

                                                                }

                                                                con6.Close();
                                                            }
                                                            catch (Exception ex)
                                                            {
                                                                Response.Write("" + ex.ToString());
                                                            }

                                                        }

                                                        con5.Close();
                                                    }
                                                    catch (Exception ex)
                                                    {
                                                        Response.Write("" + ex.ToString());
                                                    }

                                                }

                                                con4.Close();
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write("" + ex.ToString());
                                            }

                                        }

                                        con3.Close();
                                    }
                                    catch (Exception ex)
                                    {
                                        Response.Write("" + ex.ToString());
                                    }
                                }

                                con2.Close();
                            }
                            catch (Exception ex)
                            {
                                Response.Write("" + ex.ToString());
                            }
                        }

                        con1.Close();
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
            protected void Button4_Click(object sender, EventArgs e)
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "Close", "window.close()", true);
        }
    }
}