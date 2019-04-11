<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Learning_Chart.aspx.cs" Inherits="Newcastle_College.Learning_Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 160px;
            font-size:18px;
        }
        .style2
        {
            height: 83px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
 <div style="height: 475px; width: 733px">
      <div id ="GradientLead"> Learning Chart</div> 
     <br />
    
    <table style="width: 100%; height: 388px; background-color: #cdc520;">
        <tr>
            <td align="center" colspan="2" style="vertical-align: top; " class="style2">
                <img  class ="Shadow" src="IMAGES/Learning_Building.jpg"
                    style="height: 180px; width: 721px; border-width: 0px;" />
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2" style="vertical-align: top; text-align: justify">
                <span style="color: midnightblue; font-family: Palatino Linotype;">University 
                has a wide network of Study, work and Programme centers through which it reaches 
                out to its students
                <br />
                located in different parts of the country. Academic counselling is an important 
                instructional component of distance
                
                teaching/learning and consistsof tutoring and general counselling.Work centers 
                have been established for
                <br />
                programmes with practical components i.e. Laboratory Classes.<br />
                <br />
                At a Study Centers, the following facilities are extended to students:</span><ul 
                    style="text-align: left">
                    <li style="text-align: justify">
                        <span style="color: midnightblue; font-family: Palatino Linotype;">Subject 
                        specific academic counselling by part-time academic counsellers.<br />
                         </span></li>
                    <li style="text-align: justify"><span style="color: midnightblue">
                        <span style="font-family: Palatino Linotype">Audio and Video viewing facilities.</span>
                        </span></li>
                </ul>
            </td>
        </tr>
    </table>
    </div>


</asp:Content>
