using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlbaaglanti  bgl=new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
            cmd.Parameters.AddWithValue("@t1",txtTarifAd.Text);
            cmd.Parameters.AddWithValue("@t2",txtTarifMalzeme.Text);
            cmd.Parameters.AddWithValue("@t3",txtTarifYapilis.Text);
            cmd.Parameters.AddWithValue("@t4",flupTarifResim.FileName);
            cmd.Parameters.AddWithValue("@t5",txtTarifOneren.Text);
            cmd.Parameters.AddWithValue("@t6",txtMail.Text);
            cmd.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır");

        }
    }
}