using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace FİNAL
{
    public partial class ADMİN : System.Web.UI.Page
    {
        esqbaglantisi baglan = new esqbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Admin WHERE adminKullanici='"+adminKullanici.Text+"' and adminSifre='"+Password.Text+"'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                Response.Redirect("AdminPanel.aspx");
            }

            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Wrong Username or Password";
            }
        }
    }
}