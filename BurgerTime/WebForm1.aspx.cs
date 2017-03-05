using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace BurgerTime
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindrepeater();
            }
        }

        private void bindrepeater()
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            SqlCommand cmd =new SqlCommand();
            cmd.CommandText = "comme";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into [comment](Name,Email,Website,Content)values(@na,@em,@we,@co";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@na", txtName.Text);
            cmd.Parameters.AddWithValue("em", txtEmail.Text);
            cmd.Parameters.AddWithValue("we", txtWebsite.Text);
            cmd.Parameters.AddWithValue("co", txtContent.Text);
            cmd.ExecuteNonQuery();
            Repeater1.DataBind();
        }
    }
}

   