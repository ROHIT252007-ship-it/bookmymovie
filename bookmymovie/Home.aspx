<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="bookmymovie.WebForm1" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book My Movie</title>

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
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 8px;
            color: #3fd0ff;
            font-size: 26px;
            font-weight: bold;
        }

        .header ul {
            list-style: none;
            display: flex;
            margin: 0;
            padding: 0;
        }

        .header li {
            margin-left: 30px;
            cursor: pointer;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: color 0.3s;
        }

        .header li:hover {
            color: #3fd0ff;
        }

        /* ================= HERO ================= */
        .hero {
            background: linear-gradient(135deg, #0b1c2d, #123c66);
            color: white;
            text-align: center;
            padding: 90px 20px;
        }

        .hero h2 {
            font-size: 42px;
            margin-bottom: 12px;
        }

        .hero p {
            font-size: 18px;
            opacity: 0.9;
        }

        .movies {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;      
    max-width: 1100px;     
    margin: -60px auto 40px;
}


       .card {
    background: white;
    width: 240px;           
    margin: 15px;
    border-radius: 14px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.25);
    transition: 0.3s;
    text-align: center;
}


        .card:hover {
            transform: translateY(-8px);
        }

        .card img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .card h3 {
            margin: 12px 0 5px;
            color: #0b1c2d;
        }

        .genre {
            color: #6b7280;
            font-size: 14px;
        }

        .price {
            margin: 8px 0;
            font-size: 18px;
            font-weight: bold;
            color: #0ea5e9;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 6px;
        }

        .btn {
            background: linear-gradient(135deg, #0ea5e9, #3fd0ff);
            color: white;
            border: none;
            width: 88%;
            margin-bottom: 16px;
            padding: 11px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
        }

        /* ================= FOOTER ================= */
        .footer {
            background: #0b1c2d;
            color: #cbd5e1;
            text-align: center;
            padding: 18px;
            font-size: 14px;
        }

        svg {
            width: 16px;
            height: 16px;
            fill: currentColor;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">

    <!-- HEADER -->
    <div class="header">
        <div class="logo">
            BookMyMovie
        </div>

        <ul>
            <li>
                <svg viewBox="0 0 24 24">
                    <path d="M12 3l9 8h-3v10h-12v-10h-3z"/>
                </svg>
           <asp:LinkButton ID="linHome" runat="server" OnClick="linHome_Click"  >  Home </asp:LinkButton>
            </li>
            <li>
                <svg viewBox="0 0 24 24">
                    <path d="M4 6h16v12h-16z"/>
                </svg>
               <asp:LinkButton ID="linMovie" runat="server" OnClick="linHome_Click"  >  Movies </asp:LinkButton>
            </li>
            <li>
                <svg viewBox="0 0 24 24">
                    <path d="M12 12c2.7 0 5-2.3 5-5s-2.3-5-5-5-5 2.3-5 5 2.3 5 5 5z"/>
                </svg>
                <asp:LinkButton ID="linLogin" runat="server" OnClick="linLogin_Click" >  Login </asp:LinkButton>
              
            </li>
        </ul>
    </div>

    <!-- HERO -->
    <div class="hero">
        <h2>Book Movie Tickets Online</h2>
        <p>Fast • Secure • Hassle-Free Experience</p>
    </div>

    <!-- MOVIE CARDS -->

<div class="movies">
    <asp:Repeater ID="rptMovies" runat="server">
        <ItemTemplate>

            <div class="card">
                <img src='<%# Eval("image") %>' />
                <h3><%# Eval("moviename") %></h3>
                <div class="genre"><%# Eval("genre") %></div>
                <div class="price">₹ <%# Eval("price") %></div>

                <asp:Button runat="server"
                    Text="Book Now"
                    CssClass="btn"
                    CommandArgument='<%# Eval("movie_id") %>'
                    OnClick="BookNow_Click" />
            </div>

        </ItemTemplate>
    </asp:Repeater>
</div>


    <!-- FOOTER -->
    <div class="footer">
        © 2026 BookMyMovie | Static ASP.NET UI
    </div>

</form>
</body>
</html>
