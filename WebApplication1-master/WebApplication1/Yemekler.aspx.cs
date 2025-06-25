using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Yemekler : System.Web.UI.Page
    {
       
        string id = "";
        string islem = "";
        sqlbaaglanti bgl = new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {//kategori listesi

                id = Request.QueryString["Yemekid"];
                islem = Request.QueryString["islem"];

                SqlCommand cmd2 = new SqlCommand("Select*from tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";//Gözükecek değer
                DropDownList1.DataValueField = "Kategoriid";//Arkaplanda alacak değer
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                bgl.baglanti().Close();
            }
            //Yemek Listesi
            SqlCommand cmd = new SqlCommand("Select*from tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.baglanti().Close();


            if (islem == "sil")
            {
                SqlCommand cmd2 = new SqlCommand("delete from tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
                cmd2.Parameters.AddWithValue("@p1", id);
                cmd2.ExecuteNonQuery();
                bgl.baglanti().Close();

           
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        { //Yemek ekleme
            SqlCommand c = new SqlCommand("insert into tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            c.Parameters.AddWithValue("@p1", TextBox1.Text);
            c.Parameters.AddWithValue("@p2", TextBox2.Text);
            c.Parameters.AddWithValue("@p3", TextBox3.Text);
            c.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            c.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori adet sayısını arttırma
            SqlCommand c2 = new SqlCommand("update tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", bgl.baglanti());
            c2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            c2.ExecuteNonQuery();
            bgl.baglanti().Close(); 

        }
    }
}