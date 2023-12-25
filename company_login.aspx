<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="company_login.aspx.vb" Inherits="company_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function txt_cmp_login_pwd_onclick() {

        }

// ]]>
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        input[type="email"],
        input[type="textBox2"],
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
        width: 321px;
    }
        .style18
        {
            height: 69px;
            width: 505px;
        }
    </style>

<body>
    <!-- Container for the login form -->
    
</body>
    <table class="style1">
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td>
            <br>
            <br>
                <asp:Label ID="loginerrlbl" runat="server"></asp:Label>
            <br>
                <div class="container">
        <!-- Heading -->
                    <h2>
                        Company Login</h2>

        <!-- Form for admin login with input fields -->
                    <label for="id">
                    Company Email Id :</label>

                    <asp:TextBox ID="txtloginuname" runat="server" type="email"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ControlToValidate="txtloginuname" 
                        ErrorMessage="RegularExpressionValidator" ForeColor="red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Enter Proper Email Address ..</asp:RegularExpressionValidator>

                        &nbsp;&nbsp;
                        <label for="password">Password :</label>

                    <asp:TextBox ID="txtloginpwd" runat="server" type="password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtloginpwd" ErrorMessage="* password can't be empty .." 
                        ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />
                    &nbsp;
                    <asp:Button ID="companyloginbtn" runat="server" Text="Register" />
                    &nbsp;<!-- Signup link --><div class="signup-link">
                        <a href="company_reg.aspx">Don&#39;t Have An Account? Click Here</a>
                    </div>
                </div>
                 <td>
            <br>
            <br>
            <br>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

