<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="bookmymovie.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login - BookMyMovie</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0b1c2d, #123c66);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            background: white;
            width: 380px;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 12px 28px rgba(0,0,0,0.25);
            text-align: center;
        }

        .login-box h2 {
            color: #0b1c2d;
            margin-bottom: 20px;
        }

        .login-box label {
            display: block;
            text-align: left;
            margin-bottom: 6px;
            font-weight: 500;
            color: #0b1c2d;
        }

        .login-box input {
            width: 100%;
            padding: 10px 14px;
            margin-bottom: 18px;
            border-radius: 12px;
            border: 1px solid #cbd5e1;
            font-size: 15px;
            outline: none;
        }

        .login-box input:focus {
            border-color: #0ea5e9;
        }

        .btn {
            background: linear-gradient(135deg, #0ea5e9, #3fd0ff);
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            width: 100%;
            transition: 0.3s;
        }

        .btn:hover {
            background: linear-gradient(135deg, #0284c7, #0ea5e9);
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #6b7280;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="login-box">
        <h2>Login to BookMyMovie</h2>

        <label for="txtEmail">Email</label>
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter email" TextMode="Email"></asp:TextBox>

        <label for="txtPassword">Password</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter password"></asp:TextBox>

        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
         <%--OnClick="btnLogin_Click"--%>
        <p style="margin-top: 12px; font-size: 14px; color: #0b1c2d;">
    Don't have an account? 
    <a href="Signup.aspx" style="color:#0ea5e9; text-decoration:none; font-weight:600;">
        Sign Up
    </a>
        <div class="footer">
            © 2026 BookMyMovie
        </div>
    </div>
</form>

<%--<script runat="server">
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text.Trim();

        // Static authentication (for demo)
        if(username == "admin" && password == "1234")
        {
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password!');</script>");
        }
    }
</script>--%>
</body>
</html>

</html>
