<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="bookmymovie.Booking" %>


<!DOCTYPE html>



<html>
<head runat="server">
    <title>Booking Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #eef1f6;
            margin: 0;
            padding: 0;
        }

        /* Center container */
        .container {
            max-width: 700px;
            margin: 60px auto;
            background: white;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.25);
        }

        h2 {
            text-align: center;
            color: #0b1c2d;
            margin-bottom: 20px;
        }

        .movie-details {
            display: flex;
            gap: 20px;
            margin-bottom: 25px;
            align-items: center;
        }

        .movie-details img {
            width: 150px;
            height: 220px;
            border-radius: 12px;
            object-fit: cover;
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
        }

        .movie-info {
            flex: 1;
        }

        .movie-info h3 {
            margin: 0 0 8px;
            color: #0b1c2d;
        }

        .movie-info p {
            margin: 4px 0;
            color: #6b7280;
            font-size: 15px;
        }

        .price {
            font-size: 20px;
            font-weight: bold;
            color: #0ea5e9;
            margin-top: 6px;
        }

        /* Seat selection */
        .seats {
            margin: 20px 0;
        }

        .seats label {
            display: block;
            margin-bottom: 6px;
            color: #0b1c2d;
            font-weight: 500;
        }

        .seats select {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #cbd5e1;
            font-size: 15px;
        }

        /* Buttons */
        .btn {
            background: linear-gradient(135deg, #0ea5e9, #3fd0ff);
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            width: 100%;
            margin-top: 20px;
            transition: 0.3s;
        }

        .btn:hover {
            background: linear-gradient(135deg, #0284c7, #0ea5e9);
        }

        /* Footer note */
        .footer {
            text-align: center;
            margin-top: 30px;
            color: #6b7280;
            font-size: 14px;
        }

    </style>
</head>

<body>
<form runat="server">

    <div class="container">
        <h2>🎟 Movie Booking</h2>

        <!-- Movie Details -->
       <!-- Movie Details -->
<div class="movie-details">
    <asp:Image ID="imgPoster" runat="server" Width="150" Height="220" />
    <div class="movie-info">
        <h3><asp:Label ID="lblMovieName" runat="server" /></h3>
        <p><strong>Genre:</strong> <asp:Label ID="lblGenre" runat="server" /></p>
        <div class="price">
            ₹ <asp:Label ID="lblPrice" runat="server" /> per ticket
        </div>
    </div>
</div>


        <!-- Seat Selection -->
        <div class="seats">
            <label for="numSeats">Select Number of Tickets:</label>
            <asp:DropDownList ID="ddlSeats" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Booking Buttons -->
        <asp:Button ID="btncomfirm" runat="server" Text="Confirm Booking" CssClass="btn" OnClick="btncomfirm_Click"/>
        <asp:Button runat="server" Text="Back to Home" CssClass="btn" PostBackUrl="~/Home.aspx" />

        <div class="footer">
            Static Demo Page | BookMyMovie
        </div>
    </div>

</form>

<%--<script runat="server">
    protected void ConfirmBooking_Click(object sender, EventArgs e)
    {
        string seats = ddlSeats.SelectedValue;
        // Display a simple confirmation
        Response.Write("<script>alert('Successfully booked " + seats + " ticket(s) for Avengers!');</script>");
    }
</script>--%>

</body>
</html>
