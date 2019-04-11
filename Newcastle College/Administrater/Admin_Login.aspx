<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Newcastle_College.Admin_Login" EnableEventValidation="false" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <link href="../Styles/SiteN.css"type="text/css"rel="stylesheet"/>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="height: 581px; width: 780px;" 
        align="center">
        <div style="width: 136px; float:right; height: 125px;" >ID : <br /> ad<br />PASSWORD:<br />ad</div>
        <br /><br /><br />
        

<form id="form1">
     <div class ="form-area">
        <div class="img-area">
            <img src="/IMAGES/AdminAvatar.png" alt=""/>
            </div>
         <p >Admin ID:</p>
                     

         <asp:TextBox ID ="uid" runat="server" style="width:100%;height:50px;
border-radius:15px 0 15px 0;border:2px solid #fff;"></asp:TextBox>
        
         
        <p > Password:</p>

             <asp:TextBox ID="upass" runat="server" TextMode="Password" style="width:100%;height:50px;
border-radius:15px 0 15px 0;border:2px solid #fff;" OnTextChanged="upass_TextChanged"></asp:TextBox>
                  
          
              <asp:Button ID="Button1" runat="server" Text="Login" class="customButton" CssClass="customButton" onclick="Button1_Click"  />

                    <asp:Button ID="Button2"  runat="server" Text="Reset" class="customButton" CssClass="customButton" onclick="Button2_Click"/>


                   <asp:Button ID="Button3" runat="server" Text="Back" class="customButton" CssClass="customButton" onclick="Button3_Click"  />
         <br />
         
                    
                   
         <div>
                <asp:Label ID="Label3" runat="server" 
                Text="" Visible="False" 
                     
                ForeColor="#000066" ></asp:Label></div>
       </div>
    
</asp:Content>
