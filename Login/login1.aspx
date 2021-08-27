<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="Login_login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login t8i6Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 2px;
            top: 0px;
            width: 402px;
            height: 110px;
        }
        .auto-style2 {
            position: relative;
            left: 0px;
            top: 13px;
            height: 45px;
        }
        .auto-style3 {
            position: relative;
            left: 0px;
            top: 6px;
            height: 93px;
        }
    </style>
</head>
<body>

        <div>
            <div class="main">

                <h1>Login</h1>
                <div class="container">
                    <div class="sign-up-content">
                        <form id="form1" runat="server">
                        
                            <h2 class="form-title">What type of user are you ?</h2>
                            <div class="form-radio">
                                <asp:RadioButtonList ID="rbt_role" runat="server" RepeatDirection="Horizontal" Width="137px">
                                    <asp:ListItem>Candidate</asp:ListItem>
                                    <asp:ListItem>Company</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <div class="auto-style1">
                                <label for="email">Email</label>
                                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                    ErrorMessage="Enter proper Email " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email"></asp:RegularExpressionValidator>
                            </div>

                            <div class="auto-style3">
                                <label>Password</label>
                                <asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                            </div>

                            <div class="auto-style2">
                                <asp:Button ID="btn_register" runat="server" Text="Login" OnClick="btn_register_Click" />
                            </div>
                        </form>

                        <p class="loginhere">
                           New account ? <asp:HyperLink ID="HyperLink1" class="loginhere-link" runat="server" NavigateUrl="~/Login/signup1.aspx">Sign up</asp:HyperLink>                            
                        </p>
                    </div>
                </div>
                
            </div>

            <!-- JS -->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="js/main.js"></script>

        </div>
</body>
</html>
