using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;


namespace Newcastle_College.Administrater
{
    public partial class Modify_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //cn.Close();
            if (Application["aid"] == null)
                Response.Redirect("../home.aspx");
           if (DropDownList1.Page.IsPostBack == false)
          {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("select country");

                string s;
                s = "select * from COUNTRY";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);

                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    DropDownList1.Items.Add(rs.GetString(1));
                }
           }
            int i, co, cor;
            i = System.Convert.ToInt32(Application["y"]);
            if (i == 1)
            {
                co = System.Convert.ToInt32(Application["con"]);
                Panel1.Visible = true;
                if (co == 1)
                {
                    TextBox1.Visible = true;
                    Button1.Visible = true;

                }
                if (co == 2)
                {
                    DropDownList1.Visible = true;
                    TextBox2.Visible = true;
                    Button8.Visible = true;

                    /*if (DropDownList1.Page.IsPostBack == false)
                    {
                        DropDownList1.Items.Clear();
                        DropDownList1.Items.Add("select country");

                        string s;
                        s = "select * from COUNTRY";
                        cn.Open();
                        SqlCommand cmd = new SqlCommand(s, cn);
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            DropDownList1.Items.Add(rs.GetString(1));
                        }
                    }*/
                }
                if (co == 3)
                {
                    DropDownList1.Visible = true;
                    DropDownList1.AutoPostBack = true;
                    DropDownList2.Visible = true;
                    TextBox3.Visible = true;
                    Button9.Visible = true;
                }
            }
            if (i == 2)
            {
                cor = System.Convert.ToInt32(Application["com"]);
                Panel2.Visible = true;
                if (cor == 1)
                {
                    qul1.Visible = true;
                    cou.Visible = true;
                    camt.Visible = true;
                    Button6.Visible = true;

                }
                if (cor == 2)
                {
                    DropDownList5.Visible = true;
                    Button7.Visible = true;
                    if (DropDownList5.Page.IsPostBack == false)
                    {
                        DropDownList5.Items.Clear();
                        DropDownList5.Items.Add("Select Course");

                        string s;
                        s = "Select * from Courses";
                        string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                        SqlConnection cn = new SqlConnection(cs);
                        cn.Open();
                        SqlCommand cmd = new SqlCommand(s, cn);
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            DropDownList5.Items.Add(rs.GetString(2));
                        }
                        cn.Close();
                    }
                }
                if (cor == 3)
                {
                    ListBox1.Visible = true;
                    if (ListBox1.Page.IsPostBack == false)
                    {
                        ListBox1.Items.Clear();
                        string s;
                        s = "Select * from Courses";
                        string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                        SqlConnection cn = new SqlConnection(cs);
                        cn.Open();
                        SqlCommand cmd = new SqlCommand(s, cn);
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            ListBox1.Items.Add(rs.GetString(2));
                        }
                        cn.Close();
                    }
                }
                if (cor == 4)
                {
                    DropDownList6.Visible = true;
                    cou0.Visible = true;
                    camt0.Visible = true;
                    upt.Visible = true;
                    DropDownList6.Visible = true;

                    if (DropDownList6.Page.IsPostBack == false)
                    {
                        DropDownList6.Items.Clear();
                        DropDownList6.Items.Add("Select Course");

                        string s;
                        s = "Select * from Courses";
                        string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                        SqlConnection cn = new SqlConnection(cs);
                        cn.Open();
                        SqlCommand cmd = new SqlCommand(s, cn);
                        SqlDataReader rs = cmd.ExecuteReader();
                        while (rs.Read())
                        {
                            DropDownList6.Items.Add(rs.GetString(2));
                        }
                        cn.Close();
                    }
                }
            }
            if (i == 3)
            {
                Panel3.Visible = true;
            }



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Select State");
            string con, s, s2;
            int id = 0, id1 = 0;
            con = DropDownList1.Text;
            s = "Select * from Country";
            string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                if (rs.GetString(1) == con)
                {
                    id = rs.GetInt32(0);

                }
            }
            cn.Close();
            s2 = "Select * from State";
            cn.Open();
            SqlCommand cmd1 = new SqlCommand(s2, cn);
            SqlDataReader rs1 = cmd1.ExecuteReader();
            if (DropDownList2.Page.IsPostBack == true)
            {
                while (rs1.Read())
                {
                    id1 = rs1.GetInt32(1);
                    if (id1 == id)
                    {

                        DropDownList2.Items.Add(rs1.GetString(2));


                    }
                }
            }
            cn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s;
            s = "Select * from Country";
            string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            int c = 0, x;
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                if (TextBox1.Text == rs.GetString(1))
                {
                    c = 1;
                }
            }
            cn.Close();
            if (c == 0)
            {
                s = "INSERT INTO Country (Country_Name) VALUES('" + TextBox1.Text + "')";

              

                cn.Open();
                SqlCommand cmd1 = new SqlCommand(s, cn);
                x = cmd1.ExecuteNonQuery();
                if (x == 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Successfully saved Plz press back button down To Add State');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('Country is not Successfully saved');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter different country');", true);
                TextBox1.Text = "";
                TextBox1.Focus();
            } cn.Close();



        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "Select Country")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please select country');", true);
            }
            else if (TextBox2.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter state');", true);
            }
            else
            {
                string s, s1;
                s = "Select * from Country";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                int c = 0, x, sc = 0;
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    if (DropDownList1.Text == rs.GetString(1))
                    {
                        c = rs.GetInt32(0);
                    }
                }
                cn.Close();
                s = "Select * from State";
                cn.Open();
                SqlCommand cmd2 = new SqlCommand(s, cn);
                SqlDataReader rs1 = cmd2.ExecuteReader();
                while (rs1.Read())
                {
                    if (TextBox2.Text == rs1.GetString(2))
                    {
                        sc = 1;
                    }
                }
                cn.Close();
                if (sc == 0)
                {
                    s1 = "INSERT INTO STATE (Co_S_Id,State_Name) VALUES(" + c + ",'" + TextBox2.Text + "')";
                    cn.Open();
                    SqlCommand cmd1 = new SqlCommand(s1, cn);
                    x = cmd1.ExecuteNonQuery();
                    if (x == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid1", "alert('Successfully saved Plz press back button down To Add City');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid2", "alert('State is not Successfully saved');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid3", "alert('please enter different state');", true);
                    TextBox2.Text = "";
                    TextBox2.Focus();
                }
                cn.Close();
            }
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            string s;
            int st = 0, x = 0, sc = 0;
            if (DropDownList1.Text == "Select Country")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid31", "alert('please select country');", true);
            }
            else if (DropDownList2.Text == "Select State")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid32", "alert('please select state');", true);
            }
            else if (TextBox3.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid31", "alert('please enter city');", true);
            }
            else
            {
                s = "Select * from City";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                SqlCommand cmdc = new SqlCommand(s, cn);
                cn.Open();
                SqlDataReader rsc = cmdc.ExecuteReader();
                while (rsc.Read())
                {
                    if (TextBox3.Text == rsc.GetString(2))
                    {
                        sc = 1;
                    }
                }
                cn.Close();
                if (sc == 0)
                {
                    s = "Select * from State";
                    cn.Open();
                    SqlCommand cmd = new SqlCommand(s, cn);
                    SqlDataReader rs = cmd.ExecuteReader();
                    while (rs.Read())
                    {
                        if (DropDownList2.Text == rs.GetString(2))
                        {
                            st = rs.GetInt32(0);
                        }
                    }
                    cn.Close();

                    cn.Open();
                    s = "INSERT INTO City (S_C_Id,City_Name) VALUES(" + st + ",'" + TextBox3.Text + "')";
                    SqlCommand cmd1 = new SqlCommand(s, cn);
                    x = cmd1.ExecuteNonQuery();
                    if (x == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid33", "alert('saved successfully');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid34", "alert('City is not save successfully');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('Please enter different city');", true);
                    TextBox3.Text = "";
                    TextBox3.Focus();
                }

            }
            // cn.Close();
        }
        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s;
            s = "Select * from Courses where Course_Name ='" + DropDownList6.Text + "'";
            string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
            SqlConnection cn = new SqlConnection(cs);
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataReader rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                cou0.Text = rs.GetString(2);
                camt0.Text = System.Convert.ToString(rs.GetInt32(3));
            }
            cn.Close();

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
           
           
            if (qul1.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please choose qualification');", true);
                qul1.Focus();
            }
            else if (cou.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter course name');", true);
                cou.Focus();
            }
            else if (camt.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter course amount');", true);
                camt.Focus();
            }
            else
            {
                string s;
                int i = 0, j = 0, x = 0, am = 0;
                am = System.Convert.ToInt32(camt.Text);
                s = "Select * from Courses ";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rs = cmd.ExecuteReader();
                while (rs.Read())
                {
                    if (cou.Text == rs.GetString(2))
                    {
                        i = 1;
                    }
                }
                cn.Close();
                if (i == 0)
                {
                    if (qul1.Text == "Masters")
                    {
                        j = 1;
                    }
                    else if (qul1.Text == "Graduate")
                    {
                        j = 2;
                    }
                    else if (qul1.Text == "Intermediate")
                    {
                        j = 3;
                    }
                    s = "INSERT INTO Courses VALUES(" + j + ",'" + cou.Text + "'," + am + ")";
                    cn.Open();
                    SqlCommand cmd1 = new SqlCommand(s, cn);
                    x = cmd1.ExecuteNonQuery();
                    if (x == 1)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('course add successfully');", true);
                        qul1.ClearSelection();
                        cou.Text = "";
                        camt.Text = "";
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('course is not add successfully');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid", "alert('please enter different course name');", true);
                    cou.Text = "";
                    cou.Focus();
                }
            }
            //cn.Close();
        }
        protected void upt_Click(object sender, EventArgs e)
        {
            

            if (DropDownList6.Text == "Select Course")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('please select course');", true);
            }
            else if (cou0.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('please enter course');", true);
            }
            else if (camt0.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('please enter course amount');", true);
            }
            else
            {
                
                string s;
                int x = 0, am;
                am = System.Convert.ToInt32(camt0.Text);
                s = "update Courses set Course_Name='" + cou0.Text + "',Course_Fees=" + am + "where Course_Name='" + DropDownList6.Text + "'";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                x = cmd.ExecuteNonQuery();
                if (x == 1)
                {
                    cn.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('course update  successfully');", true);
                    cou0.Text = "";
                    camt0.Text = "";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('course is not update');", true);
                }
            }
            // cn.Close();
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (DropDownList5.Text == "Select Course")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('Please select course');", true);
            }
            else
            {
                string s;
                int x = 0;
                s = "delete from Courses where Course_Name ='" + DropDownList5.Text + "'";
                string cs = ConfigurationManager.ConnectionStrings["ConnectionStringFinal"].ConnectionString;
                SqlConnection cn = new SqlConnection(cs);
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                x = cmd.ExecuteNonQuery();
                cn.Close();
                if (x == 1)
                {
                    Application["y"] = "";
                    Application["con"] = "";
                    Application["com"] = "";
                    Response.Redirect("Admin_Main.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "IsValid35", "alert('course is not deleted');", true);
                }
            }
        }
        //protected void Button10_Click(object sender, EventArgs e)
        //{
        //    string filepath = Server.MapPath("Uploads/stu");
        //    HttpFileCollection uploadedFiles = Request.Files;
        //    for (int i = 0; i < uploadedFiles.Count; i++)
        //    {
        //        HttpPostedFile userPostedFile = uploadedFiles[i];
        //        try
        //        {
        //            if (userPostedFile.ContentLength > 0)
        //            {
        //                userPostedFile.SaveAs(filepath + "\\" +
        //                Path.GetFileName(userPostedFile.FileName));
        //                Label1.Text = "Saved";

        //            }
        //        }
        //        catch (Exception Ex)
        //        {
        //            Label1.Text += "Error: <br>" + Ex.Message;
        //        }
        //    }
        //}
        //protected void Button11_Click(object sender, EventArgs e)
        //{
        //    string filepath = Server.MapPath("Uploads/fac");
        //    HttpFileCollection uploadedFiles = Request.Files;
        //    for (int i = 0; i < uploadedFiles.Count; i++)
        //    {
        //        HttpPostedFile userPostedFile = uploadedFiles[i];
        //        try
        //        {
        //            if (userPostedFile.ContentLength > 0)
        //            {

        //                userPostedFile.SaveAs(filepath + "\\" +
        //                Path.GetFileName(userPostedFile.FileName));
        //                Label2.Text = "Saved";

        //            }
        //        }
        //        catch (Exception Ex)
        //        {
        //            Label1.Text += "Error: <br>" + Ex.Message;
        //        }
        //    }
        //}
        //protected void Button12_Click(object sender, EventArgs e)
        //{
        //    string filepath = Server.MapPath("Uploads/oth");
        //    HttpFileCollection uploadedFiles = Request.Files;
        //    for (int i = 0; i < uploadedFiles.Count; i++)
        //    {
        //        HttpPostedFile userPostedFile = uploadedFiles[i];
        //        try
        //        {
        //            if (userPostedFile.ContentLength > 0)
        //            {

        //                userPostedFile.SaveAs(filepath + "\\" +
        //                Path.GetFileName(userPostedFile.FileName));
        //                Label3.Text = "Saved";

        //            }
        //        }
        //        catch (Exception Ex)
        //        {
        //            Label1.Text += "Error: <br>" + Ex.Message;
        //        }
        //    }
        //}
        protected void Button13_Click(object sender, EventArgs e)
        {
            // cn.Close();
            Application["y"] = "";
            Application["con"] = "";
            Application["com"] = "";
            Response.Redirect("Admin_Main.aspx");
        }
        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

      /*  protected void BtnUpload_Click(object sender, EventArgs e)
        {
            HttpFileCollection hfc = Request.Files;
            for (int i = 0; i < hfc.Count; i++)
            {
                HttpPostedFile hpf = hfc[i];
                if (hpf.ContentLength > 0)
                {
                    hpf.SaveAs(Server.MapPath("MyFiles") + "\\" + System.IO.Path.GetFileName(hpf.FileName));
                    Response.Write("<b>File: </b>" + hpf.FileName + " <b>Size:</b> " + hpf.ContentLength + " <b>Type:</b> " + hpf.ContentType + " Uploaded Successfully <br/>");
                }


            }
        } */

        protected void cou_TextChanged(object sender, EventArgs e)
        {

        }

        protected void camt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {

        }

        protected void Button11_Click(object sender, EventArgs e)
        {

        }

        protected void Button12_Click(object sender, EventArgs e)
        {

        }

        

       

       
    }
}
