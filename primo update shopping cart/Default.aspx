<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            font-size: large;
        }
        .style35
        {
            width: 7px;
        }
        .style36
        {
            width: 641px;
            text-align: right;
        }
        .style37
        {            text-align: center;
        }
        .style38
        {
            width: 258px;
            height: 204px;
        }
        .style39
        {
            width: 821px;
            text-align: center;
        }
        .style40
        {
            width: 821px;
            text-align: left;
        }
        .style41
        {
            font-size: x-large;
            text-align: center;
        }
        .style43
        {
            width: 569px;
            text-align: left;
        }
        .style44
        {
            width: 569px;
            text-align: center;
        }
        .style45
        {
            font-size: large;
            text-align: center;
            color: #FF0000;
        }
        .style46
        {
            color: #0000FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 349px;">
        <tr>
            <td class="style37">
                &nbsp;
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
            <td class="style36">
                <asp:HyperLink ID="HyperLink9" runat="server" Font-Size="Small" 
                    NavigateUrl="~/ChangePass.aspx">Change Password?</asp:HyperLink>
                &nbsp;&nbsp;
            </td>
            <td class="style35">
                &nbsp;</td>
            <td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                    Font-Size="Small">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style41" colspan="6">
                Welcome to Toronto Hub Electronics</td>
        </tr>
        <tr>
            <td class="style45" colspan="6">
                This week special offer</td>
        </tr>
        <tr>
            <td class="style14" colspan="6">
                <br />
                PMW-300 XDCAM Camcorder (New product announced at BroadcastAsia 2013) </td>
        </tr>
        <tr>
            <td class="style37">
                &nbsp;
            </td>
            <td class="style43">
                &nbsp;</td>
            <td class="style40">
                <span class="style46"><strong>Product Highlights: </strong></span>
                <br />
                <ul>
                         <li class="bullet1"><span>Full HD 3CMOS Sensor</span></li>
                         <li class="bullet2"><span>MPEG HD422, 50Mb/s</span></li>
                         <li class="bullet3"><span> Interchangeable Lens Mount</span></li>
                         <li class="bullet4"><span>3.5" 960 x 540 Color LCD Viewfinder</span></li>
                         <li class="bullet5"><span> SD/HD-SDI & HDMI Outputs</span></li>
                         <li class="bullet6"><span>Timecode & Genlock Interfaces</span></li>
                    </ul>
                
              </td>
            <td class="style36">
                <img alt="PMW" class="style38" src="Images/PMW-300_XDCAM.jpg" />
            </td>
            
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style37" colspan="6">
                &nbsp;</td>
        </tr>
    </table>
 
  
      
</asp:Content>

