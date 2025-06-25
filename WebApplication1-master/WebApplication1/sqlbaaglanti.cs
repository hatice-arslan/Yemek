using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
 
namespace WebApplication1
{
    public class sqlbaaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection bgl = new SqlConnection("Data Source=BERZANA-NB;Initial Catalog=dbo_YemekTarifi;Integrated Security=True;Encrypt=False");
            bgl.Open();
            return bgl;
            

        }
    }
}
