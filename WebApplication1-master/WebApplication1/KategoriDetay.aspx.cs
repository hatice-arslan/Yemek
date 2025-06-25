using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlbaaglanti   bgl =new sqlbaaglanti();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["Kategoriid"];

            SqlCommand cmd = new SqlCommand("select * from tbl_Yemekler where Kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1",kategoriid);
            SqlDataReader dr = cmd.ExecuteReader(); 
            DataList2.DataSource= dr;
            DataList2.DataBind();

        }
    }
}