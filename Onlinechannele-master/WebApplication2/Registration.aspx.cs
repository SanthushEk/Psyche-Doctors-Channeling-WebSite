using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data source=(LocalDB)\\MSSQLLocalDB; Initial Catalog=Registeration; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_btn_Click(object sender, EventArgs e)
        {
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into Register values('" + Email_textbox.Text + "','" + Username_textbox.Text + "','" + Password_textbox.Text + "')", conn);
                cmd.ExecuteNonQuery();
                Submit_msg.Text = "Your Detail are Submited Successfully";
                Submit_msg.ForeColor = System.Drawing.Color.Green;

                conn.Close();
            }


        }
    }
}