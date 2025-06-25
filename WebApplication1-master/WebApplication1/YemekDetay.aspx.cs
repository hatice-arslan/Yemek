using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];//Anasayfa.aspx sayfasındaki Yemekid taşıma ile bu Yemekdetay sayfasına id taşıma ve tanımlama işlemi yapılır

            SqlCommand cmd = new SqlCommand("Select * from tbl_Yemekler where Yemekid=" + yemekid, bgl.baglanti());
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Label3.Text = rdr["YemekAd"].ToString();
            }

            bgl.baglanti().Close();

            //Yorumları Listeleme

            SqlCommand cmd2 = new SqlCommand("Select * from tbl_Yorum where YemekId=" + yemekid, bgl.baglanti());
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            DataList2.DataSource = rdr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into tbl_Yorum (YorumAdSoyad, YorumMail, Yorum, YorumTarih, YorumOnay, YemekId) " +
               "values (@YorumAdSoyad, @YorumMail, @Yorum, GETDATE(), 0, @YemekId)";

            // Parametreli SQL komutu
            SqlCommand cmd = new SqlCommand(query, bgl.baglanti());

            // Parametreleri ekleyin
            cmd.Parameters.AddWithValue("@YorumAdSoyad", txtAdSoyad.Text);
            cmd.Parameters.AddWithValue("@YorumMail", txtMail.Text);
            cmd.Parameters.AddWithValue("@Yorum", txtYorum.Text);
            cmd.Parameters.AddWithValue("@YemekId", yemekid);

            // SQL sorgusunu çalıştır
            cmd.ExecuteNonQuery();

            // Bağlantıyı kapat
            bgl.baglanti().Close();

        }
    }
}