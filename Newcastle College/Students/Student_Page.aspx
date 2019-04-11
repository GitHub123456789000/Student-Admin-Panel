<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"EnableEventValidation ="False" CodeBehind="Student_Page.aspx.cs" Inherits="Newcastle_College.Students.Student_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 477px; width: 775px; margin-left: 3px;">
<form id="form1">
    <div style="height: 456px; width: 794px;">
    <div class="Modify">
        STUDENT LOGGED</div> 
         <div
                style="color:red; display: inline-block; background-color: black; medium;width: 111px;">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
           </div>
        <div align="right" style=" width: 775px;">
            <asp:LinkButton ID="LinkButton4" runat="server"  
                BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" ForeColor="maroon" Font-Size="medium" 
                onclick="LinkButton4_Click">Logout</asp:LinkButton>
        </div>
        <div align="right" style="width: 700px; height: 21px;">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="medium" 
                onclick="LinkButton1_Click">Admission online</asp:LinkButton>
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="medium"
                onclick="LinkButton5_Click">Print Details</asp:LinkButton>
&nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="medium" 
                onclick="LinkButton2_Click">Fees details</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="medium" Font-Bold="True">Query</asp:LinkButton>
        </div>
        <div align="center" style="width: 742px">
        </div></div>
        </form>
</div>


</asp:Content>
