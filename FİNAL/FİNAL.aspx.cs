using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FİNAL.database;

namespace FİNAL
{
    public partial class FİNAL : System.Web.UI.Page
    {
        veritabanı baglan = new veritabanı();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand veri = new SqlCommand("INSERT INTO Table_3 (ADULT,DESTİNATİON,CHILDREN,CHECKIN,CHECKOUT,ROOM) VALUES('" + PARENTS.SelectedValue.ToString() + "','" + City.Text + "','" + CHILDREN.SelectedValue.ToString() + "','" + inputCheckIn.Text + "','" + inputCheckOut.Text + "','" + ROOM.SelectedValue.ToString() + "')", baglan.baglan());
            veri.ExecuteNonQuery();

        }
    }
}