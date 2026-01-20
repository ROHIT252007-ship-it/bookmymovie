<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="bookmymovie.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BookMyMovie - Select Option</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0b1c2d, #123c66);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .header {
            text-align: center;
            margin-bottom: 40px;
            color: white;
        }

        .header h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 18px;
            opacity: 0.85;
        }

        .container {
            display: flex;
            gap: 50px;
        }

        .card {
            background: white;
            width: 250px;
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 12px 28px rgba(0,0,0,0.3);
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 35px rgba(0,0,0,0.4);
        }

        .card h2 {
            margin: 15px 0 20px;
            color: #0b1c2d;
        }

        .card p {
            color: #6b7280;
            font-size: 16px;
            margin-bottom: 25px;
        }

        .btn {
            background: linear-gradient(135deg, #0ea5e9, #3fd0ff);
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: 0.3s;
            text-decoration: none;
            display: inline-block;
            width: 100%;
        }

        .btn:hover {
            background: linear-gradient(135deg, #0284c7, #0ea5e9);
        }

        .icon {
            width: 60px;
            height: 60px;
            fill: #0ea5e9;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- HEADER -->
        <div class="header">
            <h1>BookMyMovie</h1>
            <p>Please select an option: Are you a Customer or Admin?</p>
        </div>

        <!-- CARDS -->
        <div class="container">

            <!-- Customer Option -->
            <div class="card">
                <!-- Movie / Ticket SVG Icon -->
                <svg class="icon" viewBox="0 0 24 24">
                    <path d="M4 4h16v16H4V4zm2 2v12h12V6H6zm2 2h8v2H8V8zm0 4h8v2H8v-2z"/>
                </svg>
                <h2>Customer</h2>
                <p>Go to movie booking and browse movies</p>
                <asp:Button ID="btnCustomer" runat="server" Text="Go to Booking" CssClass="btn" OnClick="btnCustomer_Click"  />

            </div>

            <!-- Admin Option -->
            <div class="card">
                <!-- Gear / Settings SVG Icon -->
                <svg class="icon" viewBox="0 0 24 24">
                    <path d="M19.43 12.98l1.77-1.03-1.5-2.6-1.98.34a6.96 6.96 0 0 0-1.55-1.55l.34-1.98-2.6-1.5-1.03 1.77a6.96 6.96 0 0 0-2.06 0L6.36 4.66l-2.6 1.5.34 1.98a6.96 6.96 0 0 0-1.55 1.55l-1.98-.34-1.5 2.6 1.77 1.03a6.96 6.96 0 0 0 0 2.06L.04 17.64l1.5 2.6 1.98-.34a6.96 6.96 0 0 0 1.55 1.55l-.34 1.98 2.6 1.5 1.03-1.77a6.96 6.96 0 0 0 2.06 0l1.03 1.77 2.6-1.5-.34-1.98a6.96 6.96 0 0 0 1.55-1.55l1.98.34 1.5-2.6-1.77-1.03a6.96 6.96 0 0 0 0-2.06zM12 15.5A3.5 3.5 0 1 1 15.5 12 3.5 3.5 0 0 1 12 15.5z"/>
                </svg>
                <h2>Admin</h2>
                <p>Add or manage movies</p>
                <asp:Button ID="btnAdmin" runat="server" Text="Go to Admin" CssClass="btn" OnClick="btnAdmin_Click"  />
            </div>

        </div>
    </form>
</body>
</html>
