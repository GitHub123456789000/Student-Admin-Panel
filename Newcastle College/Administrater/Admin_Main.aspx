<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master"  AutoEventWireup="true" CodeBehind="Admin_Main.aspx.cs" Inherits="Newcastle_College.Administrater.Admin_Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 460px; width: 866px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" align="center"  >
        <div class ="Modify">

        WELCOME ADMIN PAGE</div>
        <div style="width: 192px; height: 28px; float:right;">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" ForeColor="maroon" Font-Size="20px" 
                 onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
       <br /><br /><br />
        <div style="width: 280px; height: 269px; color: black; font-weight: bold;" 
        align="center">
            <asp:LinkButton ID="LinkButton1" runat="server" 
                 Font-Bold="True" ForeColor="black" Font-Size="20px"
                Height="37px" Width="238px" onclick="LinkButton1_Click">Student view</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="20px"
                Font-Bold="True" ForeColor="black" 
                Height="43px" Width="238px" onclick="LinkButton2_Click1">Add new country</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="20px"
                Font-Bold="True" ForeColor="black" 
                Height="42px" Width="238px" onclick="LinkButton3_Click">Add new state</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="20px"
                Font-Bold="True" ForeColor="black" 
                Height="40px" Width="238px" onclick="LinkButton4_Click">Add new city</asp:LinkButton>
            <br /><span style="color:maroon;font-size:20px;">Course</span><br />
            <asp:LinkButton ID="LinkButton11" runat="server"  Font-Size="20px"
                BorderColor="White" ForeColor="black" 
                Height="28px" Width="47px" onclick="LinkButton11_Click">Add</asp:LinkButton>
            <asp:LinkButton ID="LinkButton12" runat="server" Font-Size="20px"  
                BorderColor="White"  ForeColor="black" 
                Height="28px" Width="63px" onclick="LinkButton12_Click">Delete</asp:LinkButton>
          


            <asp:LinkButton ID="edt" runat="server"  Font-Size="20px"
                Font-Bold="True" ForeColor="black" Height="28px" 
                onclick="edt_Click" Text="Edit" Width="57px" />


        <!--<span style="color:maroon ;font-size:20px;">Images</span><br />
            <asp:LinkButton ID="LinkButton14" runat="server" Font-Size="20px" 
                BorderColor="White"  ForeColor="black" 
                Height="30px" Width="239px" onclick="LinkButton14_Click">Add Images</asp:LinkButton>-->
        

</asp:Content>
