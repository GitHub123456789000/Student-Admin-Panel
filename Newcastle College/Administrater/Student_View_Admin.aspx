<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Student_View_Admin.aspx.cs" Inherits="Newcastle_College.Administrater.Student_View_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 136px;
        }
        td{
           
            text-align:center;
            color: black;
            font-weight:bold;
            font-size:18px
        }
        
        .auto-style1 {
            width: 69px;
        }
        .auto-style2 {
            width: 83px;
        }
        .auto-style3 {
            width: 84px;
        }
        .auto-style4 {
            width: 81px;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 488px">
 <form id="form1"><div align="center"><div align="left" 
            style="width: 709px">
<div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="maroon"  Font-Size="20px" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="find" runat="server" onclick="find_Click" Text="Search By Name " 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
            ForeColor="maroon" Font-Size="20px" Width="165px"  /></div>
    <div style="height:400px; overflow:scroll; width: 823px;" align="left">
      <table class="style1">
            <tr>
                <td class="auto-style1">
                    IDNO</td>
                <td class="auto-style2">
                    NAME</td>
                <td class="auto-style4">
                    S&nbsp; NAME</td>
                <td class="auto-style3" >
                    MOBILE</td>
                <td> 
                    
                    ACTION</td>
            </tr>
        </table>

    <asp:Table ID="tbl" runat="server" Width="811px" BackColor="White" 
             BorderWidth="0px" Font-Italic="True" 
            ForeColor="Black" Font-Bold="True">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2" ForeColor="White"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back"  CssClass="customButton"/>
    </div>
    </div>
    </form>
</div>

</asp:Content>
