<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Registration.aspx.cs" Inherits="Newcastle_College.Students.Student_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
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
         .customButton{
    height: 40px;
    width: 150px;
    line-height: 40px;
    text-align: center;
    background: #cdc520;
    border-radius: 25px;
    color: #fff;
    text-transform: uppercase;
    display: inline-block;
    margin-top: 20px;
    cursor: pointer;
   
}
   
        
         </style>
</head>
    <body style="background: #cdc520;">
        <center>

        
    <form id="form1" runat="server">
         <div style="width: 93px; float:right;  font-weight: bold;height: 114px;">For Quick Testing All Validations In Page are Commented 
             <br />
             .And No Implementation of strictly  DataTypes In DataBase </div>
        <br /> <br />
        <div style="border: 1px dotted black; padding: 1px; margin: 1px; height: 871px; color: #003366; font-weight: bold; width: 1082px;" 
        align="right">
     <div class="Modify" style="margin-right:30%;" >
        Student Registration Form</div>

        
        <div>
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="maroon" FontSize="20px"  onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
            <br />
        <div class="fullForm" >NAME </div>
       
    <div style="width: 234px; float: left; height: 35px;" align="left">

        <asp:TextBox ID="name"  runat="server" Width="194px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </div>
    <div class="fullForm" >

        FATHER NAME</div>
        <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="fname" runat="server" Width="207px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
        </div>
        <div class="fullForm">

            ADDRESS 1</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="add1" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    <div class="fullForm" >

        ADDRESS 2</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="add2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="fullForm" >COUNTRY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:DropDownList ID="country" runat="server" Height="23px" Width="201px" 
            AutoPostBack="True" onselectedindexchanged="country_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
    <div class="fullForm" > STATE </div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:DropDownList ID="state" runat="server" Height="23px" Width="214px" 
            AutoPostBack="True" onselectedindexchanged="state_SelectedIndexChanged">
        </asp:DropDownList>
        </div>
        <div class="fullForm" >

            CITY</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:DropDownList ID="city" runat="server" Height="24px" Width="201px">
        </asp:DropDownList>
        </div>
    <div class="fullForm" >

        NATIONALTY</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="nan"  runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="213px"></asp:TextBox>
        </div>
        <div class="fullForm" >

            GENDER</div>
    <div style="width: 234px; height: 72px; float: left;" align="left">

        <asp:RadioButtonList ID="gen" runat="server" Height="16px" Font-Size="18px" 
            onselectedindexchanged="gen_SelectedIndexChanged" Width="209px">
            <asp:ListItem>male</asp:ListItem>
            <asp:ListItem>female</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;</div>
    <div class="fullForm" >

        QUALIFICATION</div>
    <div style="border: 1px solid #003366; width: 234px; overflow:scroll; height: 110px; margin-left: 40px;" 
            align="left">

        <asp:RadioButtonList ID="qul" runat="server" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Intermediat</asp:ListItem>
            <asp:ListItem>Graduate</asp:ListItem>
            <asp:ListItem>Master</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <div class="fullForm" >

            COURSE</div>
    <div style="width: 234px; height: 104px; float: left;" align="left">

        <asp:DropDownList ID="course" runat="server" Height="24px" Width="207px" 
            onselectedindexchanged="course_SelectedIndexChanged">
        </asp:DropDownList>

        </div>
            <div style="width: 234px; height: 104px;" align="left">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>
        <div class="fullForm" >

            HOBBIES</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hob" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    <div class="fullForm" >

        MOBILE</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="mob" runat="server" Width="205px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div class="fullForm" >

            DOB</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="dob" runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div class="fullForm" >

        DOA</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="doa" runat="server" Width="205px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div align="center" style="color: maroon; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">HIGH SCOOL 
            INFORMATION</div><br />
            <div class="fullForm" >

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hy" runat="server" 
            Width="195px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div class="fullForm" >

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hp"  runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="209px"></asp:TextBox>

        </div>
       <div class="fullForm" >

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="hu"  runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div class="fullForm" >

        ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="hr" runat="server" Width="212px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div align="center" style="color: maroon; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">INTERMEDIATE 
            INFORMATION</div><br />
            <div class="fullForm" >

                PASSING YEAR</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iy"  runat="server" 
            Width="193px" BorderColor="#003366" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div class="fullForm" >

        PERCENT</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ip"  runat="server" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Width="209px"></asp:TextBox>

        </div>
       <div class="fullForm" >

            BOARD</div>
    <div style="width: 234px; height: 35px; float: left;" align="left">

        <asp:TextBox ID="iu" runat="server" Width="198px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
    <div class="fullForm" > ROLL NO.</div>
    <div style="width: 234px; height: 35px;" align="left">

        <asp:TextBox ID="ir"  runat="server" Width="212px" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>

        </div>
        <div style="width: 1014px; height: 35px; float: left;" align="center">

            <asp:Button ID="update" runat="server" Text="Update" onclick="update_Click"  CssClass="customButton" />
            <asp:Button ID="Button5" runat="server"  onclick="Button5_Click" CssClass="customButton" Text="save"  />
                
            <asp:Button ID="Button3" runat="server" Text="Reset" onclick="Button3_Click"  CssClass="customButton" />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Cancel" CssClass="customButton " />
        </div>
    </div>

    </form>
            </center>
        
</body>
</html>
