<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showmovie.aspx.cs" Inherits="bookmymovie.showmovie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>All Movies - Admin</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: #f1f5f9;
        }

        /* HEADER */
        .header {
            background: #0b1c2d;
            color: white;
            padding: 16px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 12px rgba(0,0,0,0.4);
        }

        .header h1 {
            margin: 0;
            color: #38bdf8;
            display: flex;
            align-items: center;
            gap: 10px;
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

        /* TABLE */
        .container {
            padding: 40px 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 14px;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(0,0,0,0.25);
        }

        th, td {
            padding: 14px;
            text-align: center;
        }

        th {
            background: #0ea5e9;
            color: white;
            font-size: 15px;
        }

        tr:nth-child(even) {
            background: #f8fafc;
        }

        tr:hover {
            background: #e0f2fe;
        }

        img {
            width: 60px;
            border-radius: 8px;
        }

       .action-btn {
    padding: 6px 16px;
    border-radius: 20px;
    font-weight: 600;
    cursor: pointer;
    border: none;
    text-decoration: none;
    margin: 0 4px;
    display: inline-block;
}

.edit {
    background: #22c55e;
    color: white;
}

.delete {
    background: #ef4444;
    color: white;
}

.action-btn:hover {
    opacity: 0.85;
}


        .icon {
            width: 20px;
            height: 20px;
            fill: currentColor;
            vertical-align: middle;
        }
    </style>
</head>

<body>
<form runat="server">

    <!-- HEADER -->
    <div class="header">
        <h1>
            <!-- Movie List SVG -->
            <svg class="icon" viewBox="0 0 24 24">
                <path d="M4 6H20V8H4V6ZM4 10H20V12H4V10ZM4 14H20V16H4V14ZM4 18H20V20H4V18Z"/>
            </svg>
            All Movies
        </h1>

        <asp:Button runat="server" Text="Back" CssClass="back-btn"
           OnClick="Unnamed1_Click" />
    </div>

    <!-- TABLE -->
    <div class="container">

    <asp:GridView 
    ID="gvMovies"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="movie-table"
    DataKeyNames="movie_id"
    OnRowEditing="gvMovies_RowEditing"
    OnRowUpdating="gvMovies_RowUpdating"
    OnRowCancelingEdit="gvMovies_RowCancelingEdit"
    OnRowDeleting="gvMovies_RowDeleting"
    OnRowDataBound="gvMovies_RowDataBound">

    <Columns>

        <asp:BoundField HeaderText="Movie ID" DataField="movie_id" ReadOnly="true" />

        <asp:TemplateField HeaderText="Movie Name">
            <ItemTemplate><%# Eval("moviename") %></ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtMovieName" runat="server"
                    Text='<%# Bind("moviename") %>' />
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Genre">
            <ItemTemplate><%# Eval("genre") %></ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtGenre" runat="server"
                    Text='<%# Bind("genre") %>' />
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Price (₹)">
            <ItemTemplate><%# Eval("price") %></ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtPrice" runat="server"
                    Text='<%# Bind("price") %>' />
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Poster">
            <ItemTemplate>
                <img src='<%# Eval("image") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:CommandField 
            ShowEditButton="true"
            ShowDeleteButton="true"
            EditText="Edit"
            UpdateText="Update"
            CancelText="Cancel"
            DeleteText="Delete" />
    </Columns>
</asp:GridView>


    </div>

</form>
</body>
</html>

