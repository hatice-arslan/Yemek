using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlbaaglanti bgl = new sqlbaaglanti();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand cmd = new SqlCommand("select*from tbl_Kategoriler", bgl.baglanti());
            SqlDataReader reader = cmd.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            //silme işlemi
            //butona her basıldığında sayfa yenilendiğinden dolayı silme işlemi ve update işlemi gerçekleşmiyor 

            if (islem=="sil")
            {
                SqlCommand cmd2 = new SqlCommand("delete from tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
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
        {
            SqlCommand cmd = new SqlCommand("insert into  tbl_Kategoriler (KategoriAd)values (@p1)", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
            cmd.ExecuteReader();
            bgl.baglanti().Close();
        }
    }
}