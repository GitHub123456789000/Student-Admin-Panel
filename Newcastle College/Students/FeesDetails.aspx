<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FeesDetails.aspx.cs" Inherits="Newcastle_College.Students.FeesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
     <style type="text/css">
        .style1
        {
            width: 490px;
        }

         td.TDModify {
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
             text-align: center;
             color: black;
             font-weight: bold;
             font-size:18px;
         }
    </style>
    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
<div align="right">

            

            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="maroon" onclick="LinkButton17_Click">logout</asp:LinkButton>

</div>
     <div
                style="color:red; display:inline-block; background-color: black; medium;width: 111px;">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
           </div>
<asp:Panel ID="pnlContents" runat="server" Height="498px">
      <div class="Modify">
        Student Fees Details</div>           
<div>


<div align="center">
<table class="style1">
           
            <tr>
                <td class="TDModify">
                    Student name</td>
                <td class="TDModify">
                    <asp:TextBox ID="sname" runat="server" BorderStyle="Solid" BorderWidth="0px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="TDModify">
                    Fees For course</td>
                <td class="TDModify">
                    <asp:TextBox ID="cname" runat="server" BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
</div>
<div align="center" style="width: 873px; height: 226px;">
        <table class="style1"><tr align="left">
                    <td class="TDModify" 
                        style="color: maroon;" 
                        class="style2">
              Sr.NO.</td>
                    <td class="TDModify" 
                        
                        style="color: maroon; " 
                        class="style">
                        Fess date</td>
                    <td class="TDModify"
                        
                        style="color: maroon; " 
                         class="style7">
                        Fees Amount</td> 
                    </tr></table>
        <div style="height:175px; overflow:scroll; width: 507px;">
        <asp:Table ID="tbl" runat="server" Width="594px" BackColor="White" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table></div>
<div style="width: 527px; height: 25px;">
    <table class="style3" style="537px; width: 525px;">
        <tr>
            <td class="TDModify" >
                Total Fees</td>
            <td>
                <asp:TextBox ID="tfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="85px"></asp:TextBox>
            </td>
            <td class="TDModify">
                Total Paid Fees</td>
            <td style="margin-left: 120px">
                <asp:TextBox ID="tpfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="88px"></asp:TextBox>
            </td>
            <td class="TDModify">
                Balance</td>
            <td>
                <asp:TextBox ID="bfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="83px"></asp:TextBox>
            </td>
        </tr>
    </table>
        </div>
    </div>
    <div align="center" style="height: 37px;margin-top:80px;">

            <asp:Button ID="btnPrint" runat="server" Text="Print" class="customButton" CssClass="customButton" 
                OnClientClick = "return PrintPanel();" OnClick="btnPrint_Click" />

        <asp:Button ID="Button2" runat="server" Text="Back" class="customButton" CssClass="customButton"
            onclick="Button2_Click" />

    </div>
    </div>
    </asp:Panel>

</asp:Content>
