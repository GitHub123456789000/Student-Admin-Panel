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
    public partial class Student_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Application["uid"] == null)
                Response.Redirect("../home.aspx");
            String s, id;
            if (Application["sy"] == "detail")
            {
                id = System.Convert.ToString(Application["sx"]);
                s = "select * from ADMISSION where STU_ID ='" + id + "'";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                using (SqlConnection cn = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(s, cn);
                    cn.Open();
                    SqlDataReader rs = cmd.ExecuteReader();
                    if (rs.Read())
                    {
                        name_.Text = rs.GetString(1);
                        fname_.Text = rs.GetString(2);
                        add1_.Text = rs.GetString(3);
                        add2_.Text = rs.GetString(4);


                        city_.Text = rs.GetString(7);
                        state_.Text = rs.GetString(6);
                        country_.Text = rs.GetString(5);
                        nan_.Text = rs.GetString(8);
                        gen_.Text = rs.GetString(9);
                        qul_.Text = rs.GetString(10);
                        course_.Text = rs.GetString(11);
                        photo_.ImageUrl = "../img/" + rs.GetString(12);
                     
                      
                  
                        mob_.Text = rs.GetString(14);
                        doa_.Text = rs.GetString(16);

                        hob_.Text = rs.GetString(13);
                        hy_.Text = rs.GetString(17);

                        hp_.Text = rs.GetString(18);

                        hu_.Text = rs.GetString(19);

                        hr_.Text = rs.GetString(20);

                        iy_.Text = rs.GetString(21);

                        ip_.Text = rs.GetString(22);

                        iu_.Text = rs.GetString(23);

                        ir_.Text = rs.GetString(24);
                    }


                    
                }
            }
            else if (Application["sy"] == "dat")
            {
                id = System.Convert.ToString(Application["x"]);
                s = "select *from ADMISSION";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                using (SqlConnection cn = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand(s, cn);
                    cn.Open();
                    SqlDataReader rs = cmd.ExecuteReader();
                    if (rs.Read())
                    {
                        name_.Text = rs.GetString(1);
                        fname_.Text = rs.GetString(2);
                        add1_.Text = rs.GetString(3);
                        add2_.Text = rs.GetString(4);


                        city_.Text = rs.GetString(5);
                        state_.Text = rs.GetString(6);
                        country_.Text = rs.GetString(7);
                        nan_.Text = rs.GetString(8);
                        gen_.Text = rs.GetString(9);
                        qul_.Text = rs.GetString(10);
                        course_.Text = rs.GetString(11);
                       



                        mob_.Text = rs.GetString(13);
                        doa_.Text = rs.GetString(14);

                        hob_.Text = rs.GetString(15);
                        hy_.Text = rs.GetString(16);

                        hp_.Text = rs.GetString(17);

                        hu_.Text = rs.GetString(18);

                        hr_.Text = rs.GetString(19);

                        iy_.Text = rs.GetString(20);

                        ip_.Text = rs.GetString(21);

                        iu_.Text = rs.GetString(22);

                        ir_.Text = rs.GetString(23);

                    }
                }
            }

        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("../home.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Application["sy"] == "detail")
            {
                Response.Redirect("~/Administrater/Student_View_Admin.aspx");
                Application["sy"] = "";
            }
            else if (Application["sy"] == "dat")
            {
                Response.Redirect("Student_Page.aspx");
            }

        }
    }
}