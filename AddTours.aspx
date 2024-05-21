<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTours.aspx.cs" Inherits="LimpopoWorld.AddTours" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Tour</title>
    <style type="text/css">
        body {
            font-family: "system-ui";
            background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
            overflow: auto;
            margin: 0;
            padding: 0;
            height: 100%;
        }
        .page-header {
            text-align: center;
            color: white;
            padding: 20px 0;
        }
        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            width: 60%;
            margin: 50px auto;
            font-size: 18px;
            color: white;
            padding: 20px;
            opacity: 0.9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .form-horizontal {
            width: 80%;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 1.5em;
        }
        .form-group label {
            display: block;
            text-align: left;
            margin-bottom: 0.5em;
        }
        .form-group input, .form-group textarea, .form-group .aspNetDisabled {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .form-group .file-upload {
            background: url('/Pics/add.png') no-repeat center center;
            background-size: cover;
            height: 200px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-actions {
            display: flex;
            justify-content: space-between;
        }
        .form-actions button {
            padding: 10px 20px;
            background-color: #cc6600;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-actions button:hover {
            background-color: #b35900;
        }
        .square, .star {
            position: absolute;
            display: table;
        }
        .square {
            height: 100vh;
            width: 50vw;
            background: rgba(255, 255, 255, 0.1);
            transform: rotate(45deg);
        }
        .square.square-tl {
            top: -80%;
            left: -10%;
            animation: bounce 6s infinite ease-in-out;
            background: rgb(34, 34, 34, 0.1);
            z-index: 50;
        }
        .square.square-tr {
            top: 0%;
            right: -30%;
            animation: bounce 5s infinite ease-in-out;
        }
        .square.square-bl {
            bottom: -70%;
            left: -15%;
            animation: bounce 4s infinite ease-in-out;
        }
        .square.square-br {
            bottom: 0%;
            right: -40%;
            animation: bounce 3s infinite ease-in-out;
            background: rgb(34, 34, 34, 0.1);
        }
        @keyframes bounce {
            0% { transform: translateY(0px) rotate(45deg); }
            50% { transform: translateY(20px) rotate(45deg); border-radius: 50px; }
            100% { transform: translateY(0px) rotate(45deg); }
        }
        .star {
            height: 50px;
            width: 50px;
            box-shadow: 0 0 5px 0 rgba(34, 34, 34, 0.5);
            transition: 0.5s;
        }
        .star.star1 {
            bottom: -10%;
            left: -30%;
            transform: rotate(-30deg);
            animation: sweep 4s infinite;
            background: rgba(34, 34, 34, 0.5);
        }
        .star.star2 {
            bottom: -30%;
            left: -10%;
            transform: rotate(-30deg);
            animation: sweep 3s infinite;
            background: rgb(255, 255, 255, 0.5);
        }
        @keyframes sweep {
            100% { bottom: 120%; left: 120%; transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-header">
            <h1>Add New Tour</h1>
        </div>
        <div class="container">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="tour_name">Name of Tour</label>
                    <asp:TextBox ID="tour_name" runat="server" class="form-control" ForeColor="Black" required="true" />
                </div>
                <div class="form-group">
                    <label for="place">Place</label>
                    <asp:TextBox ID="place" runat="server" class="form-control" ForeColor="Black" required="true" />
                </div>
                <div class="form-group">
                    <label for="days">Days</label>
                    <asp:TextBox ID="days" runat="server" class="form-control" ForeColor="Black" required="true" />
                </div>
                <div class="form-group">
                    <label for="locations">Locations</label>
                    <asp:TextBox ID="locations" runat="server" class="form-control" ForeColor="Black" required="true" />
                </div>
                <div class="form-group">
                    <label for="price">Price</label>
                    <asp:TextBox ID="price" runat="server" class="form-control" ForeColor="Black" required="true" />
                </div>
                <div class="form-group">
                    <label for="tour_info">Tour Info</label>
                    <asp:TextBox ID="tour_info" runat="server" class="form-control" ForeColor="Black" required="true" TextMode="MultiLine" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tour_info" Display="Dynamic" ErrorMessage="Characters less than 250" ValidationExpression="^[\s\S]{0,250}$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="FileUpload1">Image for Tour</label>
                    <div class="file-upload">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="form-actions">
                    <button type="submit" runat="server" id="Register" onserverclick="Register_Click">Add Tour</button>
                    <button type="reset" runat="server" id="Reset">Reset</button>
                </div>
            </div>
        </div>
        
        <span class="star star1"></span>
        <span class="star star2"></span>
    </form>
</body>
</html>
