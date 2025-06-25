using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id=Request.QueryString["Yorumid"];
            if(Page.IsPostBack==false)
            { 
            SqlCommand cmd = new SqlCommand("Select YorumAdSoyad, YorumMail, Yorum,YemekAd  from tbl_Yorum left join  tbl_Yemekler on tbl_Yorum.YemekId=tbl_Yemekler.Yemekid  where Yorumid=@p1 ", bgl.baglanti());
           
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
              
            }

            bgl.baglanti().Close();
        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_Yorum set Yorum=@p1, YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue ("@p1", TextBox3.Text.ToString());
            komut.Parameters.AddWithValue ("@p2", "true");
            komut.Parameters.AddWithValue ("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close(); 
        }
    }
}