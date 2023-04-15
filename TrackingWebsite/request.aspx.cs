using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace TrackingWebsite
{
    public partial class request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = login.txtInput;
            var pass = login.txtInput1;
            display.Visible = false;

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
                    TextBox2.Text = reader["ID"].ToString();
                    TextBox1.Text = reader["name"].ToString();


                    con.Close();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            DropDownList dropDownList1 = (DropDownList)Page.FindControl("DropDownList1");
            dropDownList1.SelectedIndex = -1;
            DropDownList dropDownList2 = (DropDownList)Page.FindControl("DropDownList2");
            dropDownList2.SelectedIndex = -1;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var random = new Random();
            var code = string.Concat(Enumerable.Range(0, 9).Select(i => random.Next(0, 10)));
            tracking_no.Text = code;
            try
            {
                MySqlConnection con = new MySqlConnection();
                con.ConnectionString = "server=fastdeal002.mysql.guardedhost.com; user=fastdeal002_municipalDTS; password=@dmin2022; database=fastdeal002_dtsdb1";
                con.Open();
                string insertQuery = "INSERT into request (user_id, doc_type, purpose, sender, address, date, tracking_no) VALUES (@id, @doctype, @purpose, @sender, @add, now(), @track)";
                MySqlCommand com = new MySqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@sender", TextBox1.Text);
                com.Parameters.AddWithValue("@id", TextBox2.Text);
                com.Parameters.AddWithValue("@add", TextBox3.Text);
                com.Parameters.AddWithValue("@doctype", DropDownList1.Text);
                com.Parameters.AddWithValue("@purpose", DropDownList2.Text + " " + TextBox4.Text);
                com.Parameters.AddWithValue("@track", tracking_no.Text);
                int v = com.ExecuteNonQuery();

                if (v == 1)
                {
                    Label8.Text = tracking_no.Text;
                    display.Visible = true;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    DropDownList dropDownList1 = (DropDownList)Page.FindControl("DropDownList1");
                    dropDownList1.SelectedIndex = -1;
                    DropDownList dropDownList2 = (DropDownList)Page.FindControl("DropDownList2");
                    dropDownList2.SelectedIndex = -1;

                    tracking_no.Text = string.Empty;

                }
                else
                {
                    Label9.Text = "Request not Sent. Please Try Again.";
                    Label9.Visible = true;
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    DropDownList dropDownList1 = (DropDownList)Page.FindControl("DropDownList1");
                    dropDownList1.SelectedIndex = -1;
                    DropDownList dropDownList2 = (DropDownList)Page.FindControl("DropDownList2");
                    dropDownList2.SelectedIndex = -1;
                    tracking_no.Text = string.Empty;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(" " + ex.ToString());
            }
        }

        protected void ok_Click(object sender, EventArgs e)
        {
            display.Visible = false;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            DropDownList dropDownList1 = (DropDownList)Page.FindControl("DropDownList1");
            dropDownList1.SelectedIndex = -1;
            DropDownList dropDownList2 = (DropDownList)Page.FindControl("DropDownList2");
            dropDownList2.SelectedIndex = -1;
        }

        protected void copy_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.ContentType = "text/plain";
            Response.AddHeader("Content-Disposition", "attachment;filename=tracking_number.txt");
            using (HtmlTextWriter htw = new HtmlTextWriter(Response.Output))
            {
                htw.Write(Label8.Text);
            }
            Response.End();
        }

        
    }
}