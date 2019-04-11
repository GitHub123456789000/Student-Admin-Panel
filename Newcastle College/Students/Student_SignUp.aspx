<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master"EnableEventValidation =" false" AutoEventWireup="true" CodeBehind="Student_SignUp.aspx.cs" Inherits="Newcastle_College.Students.Student_SignUp" UnobtrusiveValidationMode="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/SiteN.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div style="height: 466px; width: 999px; margin-left: 0px; margin-right: 0px;" align="center">
<form id="form1">
     <div class="Modify">
        SIGN UP</div>
    <br />
     <div style="width: 252px; font-size: medium; font-weight: bold; color: #003366; float: right;" align="center" >
            
                  Authentication Checks listed Below:<br /> Id already used: <br />Password Compare: <br /> Required Field:  <br /> Regular Expression:<br />
                  Invalid E-mail
         
         
     </div>
    
        <div> 
              <div style="width: 233px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" >
            
                  First Name</div>
        <div 
                      
            style="width: 239px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp;
                  <asp:TextBox ID="fname"  runat="server" 

Width="197px"></asp:TextBox>
        </div>
        <div style="width: 231px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" 
            >
                  Last name</div>

            <div               
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="lname" runat="server" 
                      Width="197px"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 232px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" 
            >
                  E-mail</div>                        

            <div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;  ">
                  &nbsp; 
                  <asp:TextBox ID="mail" runat="server" 
                      Width="197px" ></asp:TextBox>
        </div>
             
            <div 
              
                      
            
            
            
            
            style="width: 234px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" 
            >
                  Mobile</div><div 
                      
            style="width: 283px; font-size: medium; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="mob"  runat="server"
                      Width="197px"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 229px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" 
            >
                  Gender</div><div 
                      
            style="width: 283px; font-size: large; font-weight: bold; color: #003366;" 
           >
                  &nbsp;
                  <asp:DropDownList ID="gen" runat="server"  
                      onselectedindexchanged="gen_SelectedIndexChanged">
                  </asp:DropDownList>
        </div><div 
                      
            
            
            
            
            style="width: 245px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center" 
            >
                  User id</div>
                      
          <div style="width: 283px; font-size: medium; font-weight: bold; color: #003366;">
                  &nbsp; 
                  <asp:TextBox ID="uid" 
                      runat="server" Width="197px" Height="21px"></asp:TextBox>
        </div><div 
                      
            
            
            
            
            style="width: 243px; font-size: medium; font-weight: bold; color: #003366; float: left;" align="center"  >
           
                  Password</div> <div 
                      
            
            
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; ">
                  &nbsp; <asp:TextBox ID="pass" runat="server" 
                      Width="197px" TextMode="Password" > </asp:TextBox>
        </div> 
        <div 
                      
            
            
            
            
            style="font-size: medium; font-weight: bold; color: #003366; float: left; width: 236px;" align="center" 
           >
                  Confirm password</div><div 
                      
            
            style="width: 283px; font-size: large; font-weight: bold; color: #003366; ">&nbsp; <asp:TextBox 
                ID="cpass" runat="server" Width="197px" TextMode="Password"></asp:TextBox></div>
    <br />
                  <div style="height: 70px; width: 346px; margin-left: 0px;" 
            align="center" >
                      &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" CssClass="customButton" />
                      <asp:Button ID="Button2" runat="server"  Text="Reset" onclick="Button2_Click" CssClass="customButton" />
                      <asp:Button ID="Button3" runat="server"  Text="Cancel" onclick="Button3_Click" CssClass="customButton" />
                      <br />
                      <asp:Label ID="mess" runat="server" BackColor="Red" BorderStyle="Solid" 
                          BorderWidth="0px" Font-Bold="True" ForeColor="White" 
                          Text="password is not same" Visible="False"></asp:Label>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        </div>
           </form>
</div>

</asp:Content>
