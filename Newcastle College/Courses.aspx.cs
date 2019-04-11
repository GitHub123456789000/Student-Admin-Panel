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
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int j, i;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("select * from Courses", cn);
                cn.Open();
                SqlDataReader DR = cmd.ExecuteReader();
                
               while(DR.Read())
               {
                   i = System.Convert.ToInt32(DR.GetInt32(1));
                   j = 0;
                   tbl.BorderWidth = 2;
                   TableRow Newrow = new TableRow();
                   tbl.Controls.Add(Newrow);
                   while(j < 4)
                   {
                       TableCell Newcell = new TableCell();
                       if (j == 0)
                       {
                           Newcell.Width = 100;
                           Newcell.Text = System.Convert.ToString(DR.GetInt32(0));
                       }
                       if (j == 1)
                       {
                            Newcell.Width = 150;
                            Newcell.Text = DR.GetString(2);
                          
                       }
                       if (j == 2)
                       {
                           Newcell.Width = 200;
                           Newcell.Text = System.Convert.ToString(DR.GetInt32(3));     
                       }
                       if (j == 3)
                       {
                           Newcell.Width = 200;
                         
                         if(i == 1)
                           {
                               Newcell.Text = "3 Years";
                           }
                           else if(i==2)
                           {
                               Newcell.Text = "2 Years";
                           }
                         else
                         {
                             Newcell.Text = "2.5 Years";
                         }
                       }
                       Newrow.Controls.Add(Newcell);
                       j++;

                       }
                   }

               }
            }

        }
    }
