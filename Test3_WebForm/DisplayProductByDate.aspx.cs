using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Test3_WebForm
{
    public partial class DisplayProductByDate : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["EClerx"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_DisplayGridView", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FromDate", TxtFromDate.Text);
                    cmd.Parameters.AddWithValue("@ToDate", TxtToDate.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridDisplay.DataSource = dt;
                    GridDisplay.DataBind();
                }
            }
        }
    }
}