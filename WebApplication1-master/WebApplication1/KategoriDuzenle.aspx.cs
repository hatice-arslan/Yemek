using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)// Sayfayı 1 defa yükleme işlemini gerçekleştirir
            {
                kategoriid = Request.QueryString["Kategoriid"];

                SqlCommand cmd = new SqlCommand("Select*from tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();

                }
                bgl.baglanti().Close();
            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];

            SqlCommand cmd = new SqlCommand("update tbl_Kategoriler set KategoriAd=@p2,KategoriAdet=@p3 where Kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", kategoriid);
            cmd.Parameters.AddWithValue("@p2", TextBox1.Text);
            cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
            cmd.ExecuteReader();
            bgl.baglanti().Close();
        }
    }
}