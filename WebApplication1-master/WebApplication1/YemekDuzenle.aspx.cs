using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        string Yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Yemekid = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false)// Sayfayı 1 defa yükleme işlemini gerçekleştirir
            {
               
                if (string.IsNullOrEmpty(Yemekid))
                {
                    // Parametre boşsa, hata mesajı göster veya yönlendirme yap.
                    Response.Redirect("HataSayfasi.aspx");
                }
                else
                {


                    SqlCommand cmd = new SqlCommand("Select*from tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                    cmd.Parameters.AddWithValue("@p1", Yemekid);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        TextBox1.Text = reader[1].ToString();
                        TextBox2.Text = reader[2].ToString();
                        TextBox3.Text = reader[3].ToString();

                    }

                    SqlCommand cmd2 = new SqlCommand("Select*from tbl_Kategoriler", bgl.baglanti());
                    reader = cmd2.ExecuteReader();
               
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataSource = reader;
                    DropDownList1.DataBind();
                    bgl.baglanti().Close();


                }
            }
        }

        protected void btnGüncelle_Click(object sender, EventArgs e)
        {
             
                SqlCommand cmd = new SqlCommand("update tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
                cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
                cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
                cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
                cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@p5", Yemekid);
                cmd.ExecuteNonQuery();
                bgl.baglanti().Close();

            
        }
    }
}