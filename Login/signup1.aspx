<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="Login_signup1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>

        <div>
            <div class="main">

                <h1>Sign up</h1>
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

                            <div class="form-textbox">
                                <label for="name">UserName</label>
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your name " ControlToValidate="txtname"></asp:RequiredFieldValidator>

                            </div>

                            <div class="form-textbox">
                                <label for="txtemail">Email</label>
                                <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                    ErrorMessage="Enter proper Email " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email"></asp:RegularExpressionValidator>
                            </div>

                            <div class="form-textbox">
                                <label>Password</label>
                                <asp:TextBox ID="txtpassword" TextMode="Password"  MinLength="8" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-textbox">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="retypepass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="retypepass" ErrorMessage="password should ne same"></asp:CompareValidator>
                            </div>


                            <div class="form-textbox">
                                <asp:Button ID="btn_register" runat="server" class="submit" Text="Create Account" OnClick="btn_register_Click" />
                            </div>
                        </form>

                        <p class="loginhere">
                           Already have an account ? <asp:HyperLink ID="HyperLink1" class="loginhere-link" runat="server" NavigateUrl="/Login/login1.aspx" Target="_self">Log in</asp:HyperLink>                            
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
