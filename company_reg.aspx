<%@ Page Title="Registration" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="company_reg.aspx.vb" Inherits="reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="errlbl" runat="server"></asp:Label>

    <br />
    <table class="style1">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                <div class="container">
        <h2>Register Your Company ..</h2>
        <form action="" method="post">

            <label for="name">Company Name :</label>
            <asp:TextBox ID="txtcompanyname" runat="server" required></asp:TextBox>
            <br />

            <label for="address">Company Address :</label>
            <asp:TextBox ID="txtcompanyaddress" runat="server" required></asp:TextBox>

            <label for="comboinsdustry">Industry :</label>
            <div class="select-wrapper">
                <asp:DropDownList ID="comboinsdustry" runat="server" required=''>
                        <asp:ListItem>Auto Insudtry</asp:ListItem>
                        <asp:ListItem>Chemicals</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Engineeering</asp:ListItem>
                        <asp:ListItem>Food Processsing</asp:ListItem>
                        <asp:ListItem>Leather</asp:ListItem>
                        <asp:ListItem>Products & Services</asp:ListItem>
                        <asp:ListItem>Gem & Jewellers</asp:ListItem>
                        <asp:ListItem>Texttiles</asp:ListItem>
                        <asp:ListItem>Minig</asp:ListItem>
                        <asp:ListItem>Construction</asp:ListItem>
                        <asp:ListItem>Glasswear Industry</asp:ListItem>
                    </asp:DropDownList>
            </div>

            <label for="city">City :</label>
            <div class="select-wrapper">
                <asp:DropDownList ID="combocity" runat="server" required=''>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Gurgaon</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Gandhinagar</asp:ListItem>
                        <asp:ListItem>Navsari</asp:ListItem>
                        <asp:ListItem>Lakhnow</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Bangluru</asp:ListItem>
                        <asp:ListItem>Sri-Nagar</asp:ListItem>
                    </asp:DropDownList>
            </div>

            <label for="pincode">Pincode :</label>
            <asp:TextBox ID="txtpincode" runat="server" required></asp:TextBox>


            <label for="mobile">Mobile Number:</label>
            <asp:TextBox ID="txtmobile" runat="server" required></asp:TextBox>

            <label for="email">Email Address:</label>

            <label for="password"></label>
            
           <asp:TextBox ID="txtemail" runat="server" required></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="* Enter Proper Email Address .." 
                ControlToValidate="txtemail" ForeColor="#FF3300" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Enter Proper Email Address ..</asp:RegularExpressionValidator>
            
            <label for="Usernmae">Username :</label>
           <asp:TextBox ID="txtuname" runat="server" required=''></asp:TextBox>

            <label for="password">Password :</label>
           <asp:TextBox ID="txtpassword" runat="server" required='' type="password"></asp:TextBox>

            <asp:Button ID="btnreg" runat="server" Text="Register .." />
            </br>
            <asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="#FF9933" CausesValidation="False" />

            <div class="login-link">
                <a href="company_login.aspx">Already Have An Account? Click Here</a>
            </div>
        </form>
    </div>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            margin-top: 100px;
            margin-bottom: 60px;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 834px;
            padding: 20px;
            
            background-color: #fff;
            border-radius: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #007bff;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="phone"],
        input[type="email"] {
            width: 92%;
            padding: 10px;
            margin-bottom: 15px;
            border: 3px solid #ccc;
            border-radius: 30px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            
            margin-bottom: 15px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .login-link a {
            text-decoration: none;
            margin-top: 10px;
            color: #007bff;
        }

        .select-wrapper {
            position: relative;
        }

        select {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 3px solid #ccc;
            border-radius: 30px;
        }

        input[type="tel"] {
            width: 92%;
            padding: 10px;
            margin-bottom: 15px;
            border: 3px solid #ccc;
            border-radius: 30px;
            /* Add additional styles as needed */
        }

        /* Center-align and add padding between gender radio buttons */
        .gender-options {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 15px;
        }

        .gender-options label {
            display: flex;
            align-items: center;
            margin-top: 20px;
            margin-right: 20px;
            /* Adjust the padding between radio buttons */
            color: #333;
        }

        .gender-options input[type="radio"] {
            margin-top: 10px;
            margin-right: 5px;
        }
    .style17
    {
        width: 203px;
    }
    </style>
</head>

<body>
    
</body>
</asp:Content>

