using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Test3_WebForm
{
    public partial class AddProduct : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlDataAdapter adapter = null;
        private DataSet ds = null;
        private SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["EClerx"].ConnectionString))
                {
                    using (adapter = new SqlDataAdapter("Select distinct CategoryName from CategoryDemo", con))
                    {
                        ds = new DataSet();
                        adapter.Fill(ds, "Category");
                        DataTable dt = ds.Tables["Category"];
                        ddlCategoryName.DataSource = dt;
                        ddlCategoryName.DataTextField = "CategoryName";
                        ddlCategoryName.DataValueField = "CategoryName";
                        ddlCategoryName.DataBind();
                    }
                }
            }
        }

       

        protected void LinkDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayProductByDate.aspx");
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["EClerx"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_CategoryProduct", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductName", TxtProductName.Text);
                    cmd.Parameters.AddWithValue("@CategoryName", ddlCategoryName.SelectedValue);
                    cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
                    cmd.Parameters.AddWithValue("@TotalQuantity", TxtTotalQuantity.Text);
                    cmd.Parameters.AddWithValue("@AddedDate", TxtAddedDate.Text);
                    TxtAddedDate.Text = DateTime.Now.ToString();
                    if (con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    cmd.ExecuteNonQuery();

                }
            }
        }

        protected void csvTxtProductName_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //string ctr = null;
            //if ctr.Length >= 3)
            //{
            //    args.IsValid = true;
            //}
             
            //else
            //{
            //    args.IsValid = false;
            //}
        }
    }
}