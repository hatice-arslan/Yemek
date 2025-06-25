using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        sqlbaaglanti bgl =new sqlbaaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * From tbl_Hakkımızda", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader(); 
            DataList2.DataSource = dr;  
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}