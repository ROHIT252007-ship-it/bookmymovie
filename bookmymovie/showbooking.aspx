<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showbooking.aspx.cs" Inherits="bookmymovie.showbooking" %>

<!DOCTYPE html>


<html>
<head runat="server">
    <title>All Bookings - Admin</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f1f5f9;
        }

        .header {
            background: #0b1c2d;
            color: white;
            padding: 16px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
            color: #38bdf8;
        }

        .back-btn {
            background: #0ea5e9;
            border: none;
            padding: 8px 22px;
            color: white;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
        }

        .container {
            padding: 40px 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 14px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.25);
        }

        th, td {
            padding: 14px;
            text-align: center;
        }

        th {
            background: #0ea5e9;
            color: white;
        }

        tr:nth-child(even) {
            background: #f8fafc;
        }

        tr:hover {
            background: #e0f2fe;
        }

        .status {
            background: #22c55e;
            color: white;
            padding: 6px 14px;
            border-radius: 20px;
            font-weight: 600;
        }
    </style>
</head>

<body>
<form runat="server">

    <!-- HEADER -->
    <div class="header">
        <h1>All Bookings</h1>
        <asp:Button runat="server" Text="Back"
            CssClass="back-btn"
          />
    </div>

    <!-- TABLE -->
    <div class="container">

        <asp:GridView ID="gvBookings" runat="server"
            AutoGenerateColumns="False">

            <Columns>

                <asp:BoundField HeaderText="Booking ID" DataField="book_id" />

                <asp:BoundField HeaderText="Movie ID" DataField="movie_id" />

                <asp:BoundField HeaderText="Movie Name" DataField="movie_name" />

                <asp:BoundField HeaderText="Customer ID" DataField="cust_id" />

                <asp:BoundField HeaderText="Customer Name" DataField="name" />

                <asp:BoundField HeaderText="Tickets" DataField="ticket" />

                <asp:BoundField HeaderText="Total Price" DataField="total_price" />

                <asp:BoundField HeaderText="Booking Date"
                    DataField="booking_date"
                    DataFormatString="{0:dd-MMM-yyyy hh:mm tt}" />

            </Columns>

        </asp:GridView>

    </div>

</form>
</body>
</html>
