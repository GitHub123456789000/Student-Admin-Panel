using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Newcastle_College
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
           protected void Button1_Click(object sender, EventArgs e)
        {
            if (uid.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
                uid.Focus();

            }
            else if (upass.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
                upass.Focus();
            }
            else
            {

                string id, pass, id1, pass1, s;
               id = uid.Text;
                pass = upass.Text;
                s = "select * from AdminId";

                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(s, con);
                    con.Open();
                    SqlDataReader rs = cmd.ExecuteReader();
                    while (rs.Read())
                    {
                        id1 = rs.GetString(0);
                        pass1 = rs.GetString(1);


                        if (id == id1 && pass == pass1 )
                        {
                            Application["uid"] = id1;
                            Response.Redirect("~/Administrater/Admin_Main.aspx");
                          
                        }
                        else{
                            Label3.Visible = true;
                              Label3.Text = "ID or Password is Wrong";
                        }
                     
                        
                        
                        


                    }


                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            uid.Text = "";
            upass.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void upass_TextChanged(object sender, EventArgs e)
        {

        }

     
    }
}