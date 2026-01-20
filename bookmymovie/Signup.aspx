<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="bookmymovie.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Signup - BookMyMovie</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0b1c2d, #123c66);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-box {
            background: white;
            color: #0b1c2d;
            width: 400px;
            padding: 30px 40px;
            border-radius: 14px;
            box-shadow: 0 12px 28px rgba(0,0,0,0.3);
            text-align: center;
        }

        .signup-box h2 {
            margin-bottom: 20px;
        }

        .signup-box label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: 600;
        }

        .signup-box input[type="text"],
        .signup-box input[type="email"],
        .signup-box input[type="password"] {
            width: 100%;
            padding: 10px 14px;
            margin-bottom: 16px;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            font-size: 14px;
        }

        .signup-box input[type="text"]:focus,
        .signup-box input[type="email"]:focus,
        .signup-box input[type="password"]:focus {
            border-color: #0ea5e9;
        }

        .signup-box .btn {
            background: linear-gradient(135deg, #0ea5e9, #3fd0ff);
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 25px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
        }

        .signup-box .btn:hover {
            background: linear-gradient(135deg, #0284c7, #0ea5e9);
        }

        .signup-box p {
            margin-top: 16px;
            font-size: 14px;
        }

        .signup-box p a {
            color: #0ea5e9;
            text-decoration: none;
            font-weight: 600;
        }

        .signup-box p a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="signup-box">
        <h2>Sign Up</h2>

        <asp:Label ID="lblName" runat="server" Text="Full Name" AssociatedControlID="txtName"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name"></asp:TextBox>

        <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter your email"></asp:TextBox>

        <asp:Label ID="lblPassword" runat="server" Text="Password" AssociatedControlID="txtPassword"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>

        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtConfirmPassword"></asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>

        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn" OnClick="btnSignUp_Click"  />
<%--        OnClick="btnSignUp_Click"--%>
        <p>Already have an account? <a href="Login.aspx">Login here</a></p>
    </div>
</form>
</body>
</html>

</html>
