<%@ Page Title="Login" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="admin_login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <br />
<br />
    

    <style>
        /* CSS styles for the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* CSS styles for the container */
        .container {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            border-radius: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* CSS styles for the heading */
        h2 {
            color: #007bff;
        }

        /* CSS styles for labels */
        label {
            display: block;
            text-align: left;
            margin-bottom: 10px;
            color: #333;
        }

        /* CSS styles for input fields */
        input[type="text"],
        input[type="txtadminemail"],
        input[type="email"],
        input[type="password"] {
            width: 92%;
            padding: 10px;
            margin-bottom: 15px;
            border: 3px solid #ccc;
            border-radius: 30px;
        }

        /* CSS styles for submit button */
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* CSS styles for submit button on hover */
        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* CSS styles for the signup link */
        .signup-link {
            margin-top: 15px;
        }

        /* CSS styles for the signup link text */
        .signup-link a {
            text-decoration: dashed;
            color: #007bff;
        }
    .style17
    {
        width: 482px;
    }
    </style>
</head>

<body>
    <!-- Container for the login form -->
    
    <table class="style1">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                <div class="container">
        <!-- Heading -->
        <h2>Admin Login</h2>

        <!-- Form for admin login with input fields -->
        <form action="" method="post">
        <label for="password">Admin Email ID :</label>
        <asp:TextBox ID="txtadminemail" runat="server" required></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtadminemail" ErrorMessage="Enter Valid Email Address .." 
            ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Enter Valid Email Address ..</asp:RegularExpressionValidator>

            &nbsp;<label for="password">Password :</label>
             <asp:TextBox ID="txtadminpwd" runat="server" required type="password"></asp:TextBox>
            

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtadminpwd" ErrorMessage="* password Can't Be Empty .." 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
            

            <asp:Button ID="Button1" runat="server" Text="Login" />
&nbsp;</form>

        
    </div>&nbsp;</td>
        </tr>
    </table>
    
</body>

<br />
<br />

</asp:Content>

