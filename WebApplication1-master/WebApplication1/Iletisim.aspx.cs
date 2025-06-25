using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlbaaglanti bgl =new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_Mesaj (MesajBaslik,MesajMail,Mesajİcerik,MesajGönderen) values (@p1,@p2,@p3,@p4)", bgl.baglanti());  
           
            cmd.Parameters.AddWithValue("@p1",txtMesajKonu.Text);
            cmd.Parameters.AddWithValue("@p2",txtMesajAdres.Text);
            cmd.Parameters.AddWithValue("@p3",txtMesajIcerik.Text);
            cmd.Parameters.AddWithValue("@p4",TextBox4.Text);
            
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
           Response.Write("Yorum için tşk !!!");

        }
    }
}