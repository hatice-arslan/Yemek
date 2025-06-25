using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from tbl_Yorum where YorumOnay=1 ", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();

            SqlCommand cmd2 = new SqlCommand("Select*from tbl_Yorum where YorumOnay=0 ", bgl.baglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;  
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }
    }
}