<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Newcastle_College.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style5
        {
            width: 82px;
        }
        .style6
        {
            width: 117px;
        }
        .style7
        {
            width: 105px;
        }
        .style8
        {
            width: 160px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
  
     <div style="height:344px; overflow:scroll; width: 656px;">
         <div id ="GradientLead"> Courses</div>
         <br />

        <table class="style1" style="color: #003366; font-weight: bold">
            <tr>
                <td class="style5">
                    SR. No.</td>
                <td class="style6">
                    Course</td>
                <td class="style8">
                    Fees</td>
                <td>
                    Year</td>
            </tr>
        </table>
         <asp:Table ID="tbl" runat="server" Width="594px" BackColor="#cdc520" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="#cdc520" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table>

        <br />
</div>

</asp:Content>
