using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Newcastle_College.Students
{
    public partial class Student_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Students/Student_SignUp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                if (uid.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter id');", true);
                    uid.Focus();

                }
                else if (pass.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
                    pass.Focus();
                }

                
                else
                {

                    string u_id, u_pass, s, u_id1 ,u_pass1;
                    u_id = uid.Text;
                    u_pass = pass.Text;
                    s = "select * from Student_SignUp";

                    string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                    using (SqlConnection cn = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand(s, cn);
                        cn.Open();
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            
                            
                            u_id1 = rs.GetString(5);
                             u_pass1 = rs.GetString(6);
                   

                            if (u_id == u_id1 && u_pass == u_pass1 )
                            {
                                
                                Application["x"] = rs.GetString(5);
                                Application["uid"] = u_id;
                                //  Application["uid"] = "user";
                                Response.Redirect("~/Students/Student_Page.aspx");
                                   
                                }
                               
                                
                            else
                            {
                                Label1.Visible = true;
                                Label1.Text = "ID or Password is Wrong";
                           

                            }
                           
                        }
                    }
                }
            }
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            uid.Text = "";
            pass.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HOME.aspx");
        }
    }
}