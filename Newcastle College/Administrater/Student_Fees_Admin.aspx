<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Student_Fees_Admin.aspx.cs" EnableEventValidation ="False" Inherits="Newcastle_College.Administrater.Student_Fees_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 510px;
        }
        .style2
        {
            width: 81px;
        }
        .style3
        {
            width: 213px;
        }
        .style4
        {
            width: 168px;
        }
         td{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align:center;
            color: black;
            font-weight:bold;
            font-size:18px
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
               ForeColor="maroon"  Font-Size="20px"  onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
     <div class="Modify">
        Student Fees Entry</div>
    <div align="center" style="width: 812px; height: 410px;">
    <div align="left" style="width: 533px">
    
        <table class="style1">
            
            <tr>
                <td >
                    Student name</td>
                <td>
                    <asp:TextBox ID="sname" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees Amount</td>
                <td>
                    <asp:TextBox ID="feeamt" runat="server" OnTextChanged="feeamt_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees Date</td>
                <td>
                    <asp:TextBox ID="fees_date" runat="server" BorderStyle="Solid" 
                        BorderWidth="0px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees For course</td>
                <td>
                    <asp:TextBox ID="cname" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" >
                    
                    <asp:Button ID="Button1" runat="server" Text="Save" class="customButton" CssClass="customButton"
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click"  class="customButton" CssClass="customButton"
                        Text="Back" />
                </td>
            </tr>
        </table>
    
    </div>
    <div align="left" style="width: 536px; height: 226px;">
        <table class="style1"><tr align="left">
                    <td class="style2">
              Sr.NO.</td>
                    <td class="style4">
                        Fess date</td>
                    <td class="style7">
                        Fees Amount</td> 
                    </tr></table>
        <div style="height:175px; overflow:scroll; width: 507px;">
        <asp:Table ID="tbl" runat="server" Width="619px" BackColor="White" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table></div>
<div style="width: 527px; height: 34px;">
    <table class="style3" style="537px; width: 525px;">
        <tr>
            <td> Total Fees</td>
            <td>
                <asp:TextBox ID="tfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="85px"></asp:TextBox>
            </td>
            <td >
                Total Paid Fees</td>
            <td style="margin-left: 120px">
                <asp:TextBox ID="tpfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="88px"></asp:TextBox>
            </td>
            <td >
                Balance</td>
            <td>
                <asp:TextBox ID="bfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="83px"></asp:TextBox>
            </td>
        </tr>
    </table>
        </div>
    </div>
    
</div>

</asp:Content>
