<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="Newcastle_College.Students.Student_login" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 632px; width: 880px;" align="center">
         <div style =" float:right; width: 150px; height: 472px;">&nbsp;<br />Authentication Checks: Student ID And Password With Required Field<br /><br /><br />
             Existing Student IDs <br>ma<br>ir<br>al<br> Passwords same
             
         </div>
              <br /><br /><br />
<form id="form1">
        <div class ="form-area">
        <div class="img-area">
            <img src="/IMAGES/avatar.jpg" alt=""/>
            </div>
    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="true" Font-size="Medium" onclick="LinkButton1_Click"> SIGNUP  Visible  Registration Form For New Student   </asp:LinkButton>

        
        <p>Student ID: ka</p>
         <asp:TextBox ID ="uid" runat="server" style="width:100%;height:50px;
border-radius:15px 0 15px 0;border:2px solid #fff;"></asp:TextBox>
                 
       
        <p>Password:</p>
             <asp:TextBox ID="pass" runat="server" TextMode="Password" style="width:100%;height:50px;
border-radius:15px 0 15px 0;border:2px solid #fff;"></asp:TextBox>
                  
       
              <asp:Button ID="Button1" runat="server" Text="Login"  CssClass="customButton" onclick="Button1_Click"  />

                    <asp:Button ID="Button2"  runat="server" Text="Reset"  CssClass="customButton" onclick="Button2_Click"/>


                   <asp:Button ID="Button3" runat="server" Text="Back" CssClass="customButton" onclick="Button3_Click"  />
          <div>
                       <div>
                <asp:Label ID="Label1" runat="server"   Text="" Visible="False"   
                   
                ForeColor="#000066" ></asp:Label>
                           <br /> <br />
                               
                       </div>
       </div>
       </div>
                 
              
    
    </div>
          
            
     
    
   

</asp:Content>