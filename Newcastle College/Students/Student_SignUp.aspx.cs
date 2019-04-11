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
    public partial class Student_SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (gen.Page.IsPostBack == false)
            {
                gen.Items.Add("Select Gender");
                gen.Items.Add("Male");
                gen.Items.Add("Female");
            }


        }

        protected void gen_SelectedIndexChanged(object sender, EventArgs e)
        {
                    if (gen.SelectedItem.ToString() == "Select gender")
            gen.Text = "";
        else
            gen.Text = gen.SelectedItem.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                if (fname.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter first name');", true);
                    fname.Focus();
                }
                else if (lname.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter last name');", true);
                    lname.Focus();
                }
                else if (mail.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter E-mail id');", true);
                    mail.Focus();
                }
                else if (mob.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter mobile no.');", true);
                    mob.Focus();
                }
                else if (gen.Text == "select gender")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select gender');", true);
                    gen.Focus();
                }
                else if (uid.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter user id');", true);
                    uid.Focus();
                }
                else if (pass.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter password');", true);
                    pass.Focus();
                }
                else if (cpass.Text == "")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter conform password');", true);
                    cpass.Focus();
                }
                else
                {
                    String  f_name, l_name, email, gender, u_id, u_pass, c_pass, s, mobi, s1;
                    int x = 0, c = 0;
                    f_name = fname.Text; l_name = lname.Text; email = mail.Text; mobi = mob.Text; gender = gen.Text;
                    u_id = uid.Text; u_pass = pass.Text; c_pass = cpass.Text;
                    s1 = "select * from student_signup";
                    s = "INSERT INTO student_signup ( f_name, l_name,email,mobile,gender,u_id,password,c_password) VALUES('" + f_name + "','" + l_name + "', '" + email + "','" + mobi + "','" + gender + "','" + u_id + "','" + u_pass + "','" + c_pass + "')";

                    string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                    using (SqlConnection cn = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand(s1, cn);
                        cn.Open();
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            if (uid.Text == rs.GetString(5))
                    {
                        c = 1;
                    }

                        }
                         cn.Close();
                    }
                    if (c == 0)
                    {
                        string cs1 = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(cs1))
                        {
                            SqlCommand cmd = new SqlCommand(s, con);
                            con.Open();
                            if (u_pass == c_pass)
                                x = cmd.ExecuteNonQuery();
                            else
                                mess.Visible = true;

                            if (x == 1)
                            {
                                Response.Redirect("~/Students/Student_Login.aspx");
                            }
                        }
                    }

                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choose different user id');", true);
                        uid.Text = "";
                        uid.Focus();
                    }

                        
                          
                
                                }

                    }

                }
            
        


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

       

      
    }
}

       
    
