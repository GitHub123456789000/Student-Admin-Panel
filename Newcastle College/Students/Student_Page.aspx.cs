using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Newcastle_College.Students
{
    public partial class Student_Page : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["uid"] == null)

                Response.Redirect("~/home.aspx");


            string s, id;
            int c = 0;
            id = System.Convert.ToString(Application["x"]);
            Label1.Text = id;
            s = "select * from ADMISSION";
            string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand(s, cn);
                cn.Open();
                SqlDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {

                    if (id == rs.GetString(0))
                    {

                        c = 1;
                    }

                }

                cn.Close();
            }
            if (c == 1)
            {
                LinkButton1.Visible = false;
                LinkButton5.Visible = true;
            }
            else
            {
                LinkButton1.Visible = true;
                LinkButton5.Visible = false;
            }
        }
            
        

        
                protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Application["sy"] = "cal";
        string s, id;
        int c = 0;
        id = System.Convert.ToString(Application["x"]);
        s = "select *from ADMISSION";
        string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                if (id == rs.GetString(0))
                {

                    c = 1;
                }

            }
            cn.Close();
        }
        
        if (c == 1)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Your form has been  already filled');", true);
        }
        else
        {
            Response.Redirect("~/Administrater/Student_Registration.aspx");
        }
        
                

          
                        
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Application["sy"] = "dat";
            Response.Redirect("~/Students/Student_Details.aspx");
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Students/FeesDetails.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
            Application["x"] = "";
           

        }
    }
}