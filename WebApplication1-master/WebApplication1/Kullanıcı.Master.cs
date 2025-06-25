using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {
     
        sqlbaaglanti baglan =new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from tbl_Kategoriler",baglan.baglanti());
            SqlDataReader reader = cmd.ExecuteReader(); 
            DataList1.DataSource=reader;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}