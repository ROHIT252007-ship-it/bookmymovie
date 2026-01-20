<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="bookmymovie.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Movie Management</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #eef1f6;
        }

        /* ================= HEADER ================= */
        .header {
            background: #0b1c2d;
            color: white;
            padding: 16px 50px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .header h1 {
            margin: 0;
            font-size: 26px;
            color: #3fd0ff;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        /* ================= OPTIONS ================= */
        .options {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 50px;
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
    <form runat="server">
        <!-- HEADER -->
        <div class="header">
            <h1>
               
               BookMyMovie
            </h1>
        </div>

        <!-- OPTIONS -->
        <div class="options">
            <!-- Add Movie -->
            <div class="card">
                <svg class="icon" viewBox="0 0 24 24">
                    <path d="M19 13H13V19H11V13H5V11H11V5H13V11H19V13Z"/>
                </svg>
                <h2>Add Movie</h2>
                <p>Go to Add Movie Page</p>
                <asp:Button ID="btnAddMovie" runat="server" Text="Go" CssClass="btn" OnClick="btnAddMovie_Click" />
            </div>

            <!-- Show Movies -->
            <div class="card">
                <svg class="icon" viewBox="0 0 24 24">
                    <path d="M4 6h16v12H4V6z"/>
                </svg>
                <h2>Show Movies</h2>
                <p>View all movies</p>
                <asp:Button ID="btnShowMovies" runat="server" Text="Go" CssClass="btn" OnClick="btnShowMovies_Click"  />
            </div>
            <!-- Show All Bookings -->
<div class="card">
    <svg class="icon" viewBox="0 0 24 24">
        <path d="M3 4h18v2H3V4zm0 4h18v14H3V8zm4 3h10v2H7v-2zm0 4h10v2H7v-2z"/>
    </svg>

    <h2>All Bookings</h2>
    <p>View all movie bookings</p>

    <asp:Button ID="btnShowBookings"
        runat="server"
        Text="Go"
        CssClass="btn" OnClick="btnShowBookings_Click"
        />
</div>

        </div>
    </form>
</body>
</html>
</html>
