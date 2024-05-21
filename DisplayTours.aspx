<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTours.aspx.cs" Inherits="LimpopoWorld.DisplayTours" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Tours</title>
    <style type="text/css">
        body {
            font-family: "system-ui";
            background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
            margin: 0;
            padding: 0;
            color: white;
        }
        .container {
            padding: 20px;
        }
        .grid-view {
            width: 90%;
            margin: 0 auto;
            background-color: #333;
            border-collapse: collapse;
        }
        .grid-view th, .grid-view td {
            padding: 15px;
            text-align: center;
        }
        .grid-view th {
            background-color: #444;
            color: white;
        }
        .grid-view td {
            background-color: #555;
        }
        .grid-view tr:nth-child(even) {
            background-color: #666;
        }
        .grid-view tr:hover {
            background-color: #777;
        }
        .grid-view img {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
        .book-now {
            background-color: #04AA6D;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .book-now:hover {
            background-color: #028a5e;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                SelectCommand="SELECT [TOUR_NAME], [pic], [PRICE], [DAYS], [LOCATIONS], [TOUR_ID] FROM [Tour]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="TOUR_ID" DataSourceID="SqlDataSource1" CssClass="grid-view">
                <Columns>
                    <asp:BoundField DataField="TOUR_NAME" HeaderText="Tour Name" SortExpression="TOUR_NAME" />
                    <asp:BoundField DataField="DAYS" HeaderText="Days" SortExpression="DAYS" />
                    <asp:BoundField DataField="LOCATIONS" HeaderText="Locations" SortExpression="LOCATIONS" />
                    <asp:BoundField DataField="TOUR_ID" HeaderText="Tour ID" InsertVisible="False" ReadOnly="True" SortExpression="TOUR_ID" />
                    <asp:TemplateField HeaderText="Picture">
                        <ItemTemplate>
                            <img src='<%# "Tour_pics/" + Eval("pic") %>' alt="Tour Picture" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Order.aspx?TourID=" + Eval("TOUR_ID") %>' CssClass="book-now">Book Now</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle CssClass="header-style" />
                <RowStyle CssClass="row-style" />
                <AlternatingRowStyle CssClass="alt-row-style" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
