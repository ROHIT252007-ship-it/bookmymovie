<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addmovie.aspx.cs" Inherits="bookmymovie.addmovie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Movie | Admin Panel</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f1f5f9;
        }

        /* ===== HEADER ===== */
        .header {
            background: #0f172a;
            color: white;
            padding: 18px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
            font-size: 22px;
            color: #38bdf8;
        }

        .back-btn {
            background: #38bdf8;
            border: none;
            padding: 8px 20px;
            border-radius: 20px;
            font-weight: 600;
            cursor: pointer;
            color: #0f172a;
        }

        .back-btn:hover {
            background: #0ea5e9;
            color: white;
        }

        /* ===== FORM CARD ===== */
        .container {
            display: flex;
            justify-content: center;
            margin-top: 60px;
        }

        .card {
            background: white;
            width: 450px;
            padding: 30px;
            border-radius: 14px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .card h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #0f172a;
        }

        label {
            font-weight: 600;
            color: #334155;
            display: block;
            margin-bottom: 6px;
        }

        .input {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #cbd5e1;
            margin-bottom: 18px;
            font-size: 14px;
        }

        .input:focus {
            outline: none;
            border-color: #38bdf8;
            box-shadow: 0 0 0 2px rgba(56,189,248,0.25);
        }

        .file-box {
            border: 2px dashed #cbd5e1;
            padding: 15px;
            text-align: center;
            border-radius: 10px;
            margin-bottom: 20px;
            background: #f8fafc;
        }

        .btn {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 30px;
            background: linear-gradient(135deg, #38bdf8, #0ea5e9);
            color: white;
            font-weight: 700;
            font-size: 15px;
            cursor: pointer;
        }

        .btn:hover {
            box-shadow: 0 6px 16px rgba(14,165,233,0.6);
            transform: translateY(-1px);
        }

        /* Responsive */
        @media(max-width: 520px) {
            .card {
                width: 90%;
            }
        }
    </style>
</head>

<body>
<form runat="server">

    <!-- HEADER -->
    <div class="header">
        <h1>+ Add Movie</h1>
        <asp:Button ID="btnBack" runat="server" Text="Back"
            CssClass="back-btn" OnClick="btnBack_Click" />
    </div>

    <!-- FORM -->
    <div class="container">
        <div class="card">
            <h2>Movie Details</h2>

            <label>Movie Name</label>
            <asp:TextBox ID="txtMovieName" runat="server"
                CssClass="input" placeholder="Enter movie name" />

            <label>Genre</label>
            <asp:TextBox ID="txtGenre" runat="server"
                CssClass="input" placeholder="Action / Drama / Comedy" />

            <label>Ticket Price (₹)</label>
            <asp:TextBox ID="txtPrice" runat="server"
                CssClass="input" TextMode="Number" placeholder="Enter price" />

            <label>Poster Image</label>
            <div class="file-box">
                <asp:FileUpload ID="fuimage" runat="server" />
            </div>

            <asp:Button ID="btnAddMovie" runat="server"
                Text="Add Movie" CssClass="btn"
                OnClick="btnAddMovie_Click" />
        </div>
    </div>

</form>
</body>
</html>
