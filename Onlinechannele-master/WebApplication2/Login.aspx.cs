using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{


    public partial class Login : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data source=(LocalDB)\\MSSQLLocalDB; Initial Catalog=Registeration; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            msg_lbl.Text = "";
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("select * From Register where Username='" + Username_txtbox.Text + "' AND Password='" + Passowrd_txtbox.Text + "'", conn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count > 0)
            {
                msg_lbl.Visible = true;
                msg_lbl.Text = "Login Succsessfull";
                msg_lbl.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                msg_lbl.Visible = true;
                msg_lbl.Text = "Invalid Username or Password";
                msg_lbl.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}