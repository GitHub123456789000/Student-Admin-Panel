<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Details.aspx.cs" Inherits="Newcastle_College.Students.Student_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Studentt Detail</title>
    <style type="text/css">


a:link, a:visited
{
    color: #034af3;
}

        
 div.fullForm
    {
           
            text-align:center;
            color: black;
            font-weight:bold;
            font-size:18px;
            
            width: 234px;
             float: left; 
             height: 35px;
        }
         div.Modify {
             Text-align: center;
             color: maroon;
             font-weight: bold;
             height: 44px;
             width: 999px;
             font-size: x-large;
             margin-left: 0px;
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
         }

    </style>

</head>
<body>
       <center>
    <form id="form1" runat="server">
    <div style="border-style: dashed; border-color: inherit; border-width: 1px; padding: 1px; margin: 1px; height: 755px; color:black; font-weight: bold; width: 1016px;" 
        align="right">
    <div class="Modify">

        STUDENT DETAILS</div>
        <div style="">

            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" Font-Size="large"
                ForeColor="maroon" onclick="LinkButton17_Click">logout</asp:LinkButton>

        </div>
        <div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
        <div style="width: 234px; float: left; height: 35px;" align="left">

            NAME</div>
    <div style="width: 234px; float: left; height: 35px;" align="left">

        <asp:TextBox ID="name_"  runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
    <div style="width: 308px; float: left; height: 35px;" align="left">

        FATHER NAME</div>
        <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="fname_" runat="server" Width="207px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            ADDRESS 1</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="add1_" runat="server"  BorderStyle="Solid" 
            BorderWidth="0px" ReadOnly="True" Width="179px"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ADDRESS 2</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="add2_" runat="server"  BorderStyle="Solid" 
            BorderWidth="0px" ReadOnly="True" Width="200px"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            COUNTRY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="city_" onkeypress="return isNumberKey(event)" runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        STATE </div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="state_" onkeypress="return isNumberKey(event)" runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            CITY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="country_" onkeypress="return isNumberKey(event)" 
            runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        NATIONALTY</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="nan_" onkeypress="return isNumberKey(event)" runat="server" 
            BorderStyle="Solid" BorderWidth="0px" Width="213px" ReadOnly="True"></asp:TextBox>
        </div>
        <div style="width: 234px; height: 72px; float: left;" align="left">

            GENDER</div>
    <div style="width: 234px; height: 72px; float: left;" align="left">

        &nbsp;<asp:TextBox ID="gen_" onkeypress="return isNumberKey(event)" 
            runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 72px; float: left;" align="left">

        QUALIFICATION</div>
    <div style="border: 0px solid #003366; width: 234px;  height: 72px; margin-left: 40px;" 
            align="left">

        <asp:TextBox ID="qul_" onkeypress="return isNumberKey(event)" runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
        <div style="width: 234px; height: 104px; float: left;" align="left">

            COURSE</div>
    <div style="width: 234px; height: 104px; float: left;" align="left">

        <asp:TextBox ID="course_" onkeypress="return isNumberKey(event)" runat="server" Width="194px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 104px; float: left;" align="left">

        PHOTO</div>
    <div style="width: 234px; height: 104px;" align="left">

        <asp:Image ID="photo_" runat="server" Height="92px" 
            Width="111px" />

        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            HOBBIES</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hob_" runat="server"  BorderStyle="Solid" 
            BorderWidth="0px" ReadOnly="True" Width="185px"></asp:TextBox>
        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        MOBILE</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="mob_" onkeypress="return isNumber(event)" runat="server" Width="205px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
        <div style="width: 234px; height: 35px; float: left;" align="left">

            DOB</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="dob_" runat="server" Width="198px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        DOA</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="doa_" runat="server" Width="205px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
        <div align="center" style="color:maroon;">HIGH SCOOL 
            INFORMATION</div><br />
            <div style="width: 234px; height: 35px; float: left;" align="left">

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hy_" onkeypress="return isNumber(event)" runat="server" 
            Width="195px" BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hp_" onkeypress="return isNumber(event)" runat="server" 
            BorderStyle="Solid" BorderWidth="0px" Width="209px" ReadOnly="True"></asp:TextBox>

        </div>
       <div style="width: 234px; height: 35px; float: left;" align="left">

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hu_" onkeypress="return isNumberKey(event)" runat="server" Width="198px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hr_" onkeypress="return isNumber(event)" runat="server" Width="212px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
        <div align="center" style="color: maroon;">INTERMEDIATE 
            INFORMATION</div><br />
            <div style="width: 234px; height: 35px; float: left;" align="left">

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iy_" onkeypress="return isNumber(event)" runat="server" 
            Width="193px" BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ip_" onkeypress="return isNumber(event)" runat="server" 
            BorderStyle="Solid" BorderWidth="0px" Width="209px" ReadOnly="True"></asp:TextBox>

        </div>
       <div style="width: 234px; height: 35px; float: left;" align="left">

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iu_" onkeypress="return isNumberKey(event)" runat="server" Width="198px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
    <div style="width: 308px; height: 35px; float: left;" align="left">

        ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ir_" onkeypress="return isNumber(event)" runat="server" Width="212px" 
            BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>

        </div>
        <div style="width: 1014px; height: 25px; float: left;" align="center">

            <input name="Print" onclick="window.print()" 
                style="color: #FFFFFF; background-color: #003366; font-weight: bold; margin-left: 0px;" 
                type="button" value="Print" />&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" 
                Font-Bold="True" ForeColor="White" onclick="Button1_Click" Text="Back" />
        </div>
    </div>
    </form></center>

</body>
</html>
