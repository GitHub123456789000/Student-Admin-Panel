<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Modify_Admin.aspx.cs" Inherits="Newcastle_College.Administrater.Modify_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
        <style type="text/css">
            .style1
    {
        width: 100%;
            height: 149px;
        }
    .style2
    {
        height: 16px;
    }
        .style4
        {
            height: 16px;
            width: 631px;
        }
        .style5
        {
            width: 631px;
        }
        td.TDModify{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            text-align:center;
            color: black;
            font-weight:bold;
            font-size:18px
        }
            .auto-style1 {
                width: 289px;
            }
    </style>
         
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="maroon"  Font-Size="20px"  onclick="LinkButton17_Click">logout</asp:LinkButton>
        <br />
        </div>
    <div style="height: 624px">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="Modify">
        Modify Page</div>
            <br />
            <table class="style1" id="table1">
                
                <tr>
                    <td class="TDModify">
             
                        Country</td>
                    <td class="TDModify">
                        State
                    </td>
                    <td class="TDModify">
                        City
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" Visible="False" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList2" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList3" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox2"  runat="server" Visible="False" ></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:TextBox ID="TextBox3"  runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="customButton" onclick="Button1_Click"  />
                           
                    </td>
                    <td align="center">
                         <asp:Button ID="Button8" runat="server" Text="Add" CssClass="customButton" onclick="Button8_Click"  />
                        
                     
                           
                    </td>
                    <td align="center">
                        <asp:Button ID="Button9" runat="server" Text="Add" CssClass="customButton" onclick="Button9_Click" />
                  
                         
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Visible="False">
             <div class="Modify">
         Modify Course</div>
            <table class="style1" id="table2">
               
                       
                </tr>
                <tr>
                     <td class="TDModify">
                        New Course</td>
                    <td class="TDModify">
                        Update</td>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList5" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style4" style="color: #003366; font-weight: bold">
                        <asp:RadioButtonList ID="qul1" runat="server" AutoPostBack="True" 
                            Font-Bold="True" Font-Size="18px" ForeColor="#003366" Visible="False">
                            <asp:ListItem>Masters</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                              <asp:ListItem>Intermediate</asp:ListItem>
                        </asp:RadioButtonList>
                        <span style="font-size:18px;">Course Name</span>&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cou" runat="server" Visible="False" OnTextChanged="cou_TextChanged"></asp:TextBox>
                        <br />
                        <span style="font-size:18px;">Course Amount</span> &nbsp;<asp:TextBox ID="camt"
                            runat="server" Visible="False" Height="25px" OnTextChanged="camt_TextChanged" ></asp:TextBox>
                    </td>
                    
                    <td align="left" class="style4" style="color: #003366; font-weight: bold">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                            Visible="False" 
                            onselectedindexchanged="DropDownList6_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <span style="font-size:18px;">Course Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="cou0" runat="server" onkeypress="return isNumberKey(event)" 
                            Visible="False"></asp:TextBox>
                        <br />
                        <span style="font-size:18px;">Course Amount</span>&nbsp;&nbsp;<asp:TextBox ID="camt0" runat="server" 
                            onkeypress="return isNumber(event)" Visible="False"></asp:TextBox>
                    </td>
                    <td align="center" class="style2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="67px" Visible="False" 
                            Width="148px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style5">
                        <asp:Button ID="Button6" runat="server" Text="Add"  CssClass="customButton" onclick="Button6_Click" />
                        
                    </td>
                    <td align="center" class="style5">
                    
                        <asp:Button ID="upt" runat="server" onclick="upt_Click"  CssClass="customButton" Text="Update" />
                           
                    </td>
                    <td align="center">
                        <asp:Button ID="Button7" runat="server" Text="Delete" onclick="Button7_Click" CssClass="customButton"/>
                    </td>
                </tr>
                
            </table>
        </asp:Panel>
        <br />
    <br />
        <asp:Panel ID="Panel3" runat="server" Height="158px" Visible="False">
         <!--    <div class="Modify">
         Modify Images</div>-->
            <table class="style1" id="table3">
               
             <!--       <tr>
                    <td class="auto-style1">
                        Student</td>
                    <td align="center" 
                <td class="TDModify">
                    </td>
                    <td class="TDModify">
                        Others</td>
                        
                </tr>
                <tr>
                    <td align="center" class="auto-style1">
                        <asp:FileUpload ID="FileUpload1" AllowMultiple="True" runat="server" class="multi"/>
                    </td>
                    <td align="center">
                        <asp:FileUpload ID="FileUpload2" AllowMultiple="True" runat="server" class="multi" />
                    </td>
                    <td align="center">
                        <asp:FileUpload ID="FileUpload3" AllowMultiple="True" runat="server" class="multi" />
                    </td>
                </tr>-->
                <tr>
                    <td align="center" class="auto-style1">
                        <asp:Button ID="Button10" runat="server"  Text="Add" onclick="Button10_Click"  CssClass="customButton"/>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Button ID="Button11" runat="server" Text="Add" onclick="Button11_Click"  CssClass="customButton" />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Button ID="Button12" runat="server" Text="Add" onclick="Button12_Click"  CssClass="customButton"/>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
               
            </table>
            
        </asp:Panel>
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" onclick="Button13_Click" Text="Back" class="customButton" CssClass="customButton"/>
</div>

</asp:Content>
