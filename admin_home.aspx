<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin_home.aspx.vb" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        /* Style for unvisited links */
        a {
            text-decoration: none; /* Remove underline */
            color: #007bff; /* Link color */
            transition: color 0.3s; /* Smooth color transition on hover */
        }

        /* Style for visited links */
        a:visited {
            color: #551a8b; /* Visited link color */
        }

        /* Style for hovered links */
        a:hover {
            color: #0056b3; /* Hovered link color */
            text-decoration: underline; /* Underline on hover */
        }

        /* Style for active links (clicked) */
        a:active {
            color: #ff0000; /* Active link color */
        }

        .style17
        {
            width: 155px;
        }
        .style18
        {
            width: 89px;
            height: 106px;
        }
        .style19
        {
            height: 106px;
        }
        .style20
        {
            width: 758px;
            text-align: center;
            color: #FF3300;
            font-size: x-large;
            font-family: "Baskerville Old Face";
        }
        .style21
        {
            width: 89px;
            height: 69px;
        }
        .style23
        {
            width: 236px;
        }
         /* Style for the dropdown */
        .dropdown-style {
            width: 200px; /* Adjust the width as needed */
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            background-color: #fff;
            color: #333;
        }

        /* Style for the button */
        .button-style {
            padding: 10px 20px; /* Adjust padding as needed */
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button-style:hover {
            background-color: #0056b3;
        }

        
        .style24
        {
            height: 49px;
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <p>
        <table class="style1">
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    <table class="style1" style="width: 76%">
                        <tr>
                            <td class="style20">
                                <strong>: ADMIN DASHBOARD :</strong><table class="style7">
                                    <tr>
                                        <td>
                                            <br />
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
                                            <br />
                                            <br />
                                            <table class="style7">
                                                <tr>
                                                    
                                                    <td class="style24">
                                                        <asp:DropDownList ID="ddsearch" runat="server" CssClass="dropdown-style">
                                                            <asp:ListItem>Auto Insudtry</asp:ListItem>
                                                            <asp:ListItem>Chemicals</asp:ListItem>
                                                            <asp:ListItem>Electronics</asp:ListItem>
                                                            <asp:ListItem>Engineeering</asp:ListItem>
                                                            <asp:ListItem>Food Processsing</asp:ListItem>
                                                            <asp:ListItem>Leather</asp:ListItem>
                                                            <asp:ListItem>Gem &amp; Jewellers</asp:ListItem>
                                                            <asp:ListItem>Texttiles</asp:ListItem>
                                                            <asp:ListItem>Minig</asp:ListItem>
                                                            <asp:ListItem>Construction</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br />
                                                    </td>
                                                    <td class="style24">
                                                        <asp:Button ID="search" runat="server" Text="Search By Industry .." CssClass="button-style" />
                                                        <br />
                                                    </td>
                                                    
                                                </tr>
                                                <tr>
                                                    
                                                    <td>
                                                        <br />
                                Order By Descending :</td>
                                                    <td>
                                                        <br />
                                <asp:Button ID="Button1" runat="server" Text="Descending" CssClass="button-style" />
                                                    </td>
                                                    
                                                </tr>
                                            </table>
                                            <table class="style7">
                                                
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                    </table>
                    </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td style="margin-left: 40px">
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateDeleteButton="True" 
                        AutoGenerateEditButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        DataKeyNames="id">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <table class="style7" style="width: 175%">
                        <tr>
                            <td class="style23">
                                &nbsp;</td>
                            <td class="style24">
                                &nbsp;</td>
                            <td class="style25">
                                &nbsp;</td>
                            <td class="style26">
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
        <br />
    </p>

   

   


</asp:Content>

