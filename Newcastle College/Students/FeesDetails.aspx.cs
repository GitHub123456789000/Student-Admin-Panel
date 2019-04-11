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
    public partial class FeesDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["uid"] == null)
            Response.Redirect("~/home.aspx");
        string id, s,username;
        id = System.Convert.ToString(Application["x"]);
        username = System.Convert.ToString(Application["uid"]);
        Label1.Text = username;
              string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
              using (SqlConnection cn = new SqlConnection(cs))
              {

                  cn.Open();
                  s = "select * from ADMISSION where STU_ID =  '" + id + "'";

                  SqlCommand cmd = new SqlCommand(s, cn);
                  SqlDataReader rs = cmd.ExecuteReader();
                  while (rs.Read())
                  {
                      sname.Text = rs.GetString(1);
                      cname.Text = rs.GetString(11);
                  }
                  cn.Close();
                  cn.Open();
                  s = "select * from Courses where Course_Name='" + cname.Text + "'";
                  SqlCommand cmd1 = new SqlCommand(s, cn);
                  SqlDataReader rs1 = cmd1.ExecuteReader();
                  if (rs1.Read())
                  {
                      tfees.Text = System.Convert.ToString(rs1.GetInt32(3));
                      int J, p = 0, ba = 0, fa;
                      string d;
                      cn.Close();
                          s = "select * from Fees where Fees_St_ID='" + id + "'";
                          cn.Open();
                          SqlCommand cmd2 = new SqlCommand(s, cn);
                          SqlDataReader rs2 = cmd2.ExecuteReader();
                          while (rs2.Read())
                          {
                              J = 0;
                              tbl.BorderWidth = 2;
                              TableRow rowNew = new TableRow();
                              tbl.Controls.Add(rowNew);
                              d = rs2.GetString(3);
                              fa = rs2.GetInt32(2);
                              p += fa;
                              while (J < 4)
                              {
                                  TableCell cellNew = new TableCell();
                                  if (J == 0)
                                  {
                                      cellNew.Width = 100;
                                      cellNew.Text = System.Convert.ToString(rs2.GetInt32(0));
                                  }
                                  if (J == 1)
                                  {
                                      cellNew.Width = 150;
                                      cellNew.Text = d;
                                  }
                                  if (J == 2)
                                  {
                                      cellNew.Width = 200;
                                      cellNew.Text = System.Convert.ToString(fa);
                                  }
                                  rowNew.Controls.Add(cellNew);
                                  J++;
                              }
                          }
                          ba = System.Convert.ToInt32(tfees.Text) - p;
                          tpfees.Text = System.Convert.ToString(p);
                          bfees.Text = System.Convert.ToString(ba);
                      }
                      cn.Close();

                  }
              }
        
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Page.aspx");
    
    }
    protected void LinkButton17_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Home.aspx");
    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {

    }

    


        }

      
    }
