<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap CSS -->
    <!-- Custom CSS -->
    <style>
        /* Common CSS styles for the login page */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('1.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        .blur-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(10px); /* Adjust the blur intensity */
        }

        .container {
            position: relative;
            z-index: 1;
            padding: 20px;
        }

        .login-container {
            max-width: 400px;
            padding: 40px 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333333;
        }

        .form-group label {
            color: #333333;
        }

        .form-control {
            background-color: #f5f5f5;
            border: 1px solid #ced4da;
            color: #555555;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            color: #ffffff;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .text-center a {
            color: #007bff;
            text-decoration: none;
        }

        .text-center a:hover {
            text-decoration: underline;
        }

        /* Additional styles for ASP.NET login form */
        .login-container {
            background-color: #fff; /* White background for the login form */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }

        .login-container h4 {
            color: #007bff; /* Blue header color */
        }

        .error-message {
            color: #dc3545; /* Red error message color */
        }
    </style>
    <div class="blur-bg"></div> <!-- Blur background layer -->
    

    <!-- ASP.NET login form -->
    <h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-6">
            <section id="loginForm">
                <div class="login-container">
                    <h4>Log in to Your Account</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="error-message">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <label for="UserName">User name</label>
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                            CssClass="text-danger" ErrorMessage="The user name field is required." />
                    </div>
                    <div class="form-group">
                        <label for="Password">Password</label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <label for="RememberMe">Remember me?</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-primary" />
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
                    if you don't have an account.
                </p>
            </section>
        </div>

        <div class="col-md-6">
            <section id="socialLoginForm">
                <uc:openauthproviders runat="server" id="OpenAuthLogin" />
            </section>
        </div>
    </div>

   </body>
</html>

</asp:Content>
