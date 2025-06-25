using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        sqlbaaglanti bgl =new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from tbl_GünüYemegi", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader(); 
            DataList2.DataSource = dr;  
            DataList2.DataBind();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}