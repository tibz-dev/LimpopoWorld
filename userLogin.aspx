<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="LimpopoWorld.userLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <style type="text/css">
        body {
            font-family: "Quicksand", sans-serif;
            background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }
        .container h1 {
            margin-bottom: 30px;
        }
        .form-horizontal {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .form-group {
            margin-bottom: 15px;
            width: 100%;
        }
        .form-group .control-label {
            margin-bottom: 5px;
            font-weight: bold;
            text-align: left;
        }
        .form-group .form-control {
            padding: 10px;
            width: calc(100% - 20px);
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .form-group .form-control:focus {
            outline: none;
            border-color: #555;
        }
        .form-group .action-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .form-group .action-buttons asp:Button {
            width: 48%;
            background-color: #04AA6D;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group .action-buttons asp:Button:hover {
            background-color: #028a5e;
        }
        .square, .star {
            height: 50px;
            width: 50px;
            position: absolute;
            box-shadow: 0 0 5px rgba(34, 34, 34, 0.5);
        }
        .square {
            background: rgba(255, 255, 255, 0.1);
            animation: bounce 6s infinite ease-in-out;
        }
        .star {
            background: rgba(255, 255, 255, 0.5);
            animation: sweep 4s infinite;
        }
        .square-tl { top: -80%; left: -10%; z-index: 50; }
        .square-tr { top: 0; right: -30%; }
        .square-bl { bottom: -70%; left: -15%; }
        .square-br { bottom: 0; right: -40%; }
        .star1 { bottom: -10%; left: -30%; transform: rotate(-30deg); }
        .star2 { bottom: -30%; left: -10%; transform: rotate(-30deg); }
        @keyframes bounce {
            0%, 100% { transform: translateY(0) rotate(45deg); }
            50% { transform: translateY(20px) rotate(45deg); border-radius: 50px; }
        }
        @keyframes sweep {
            100% { bottom: 120%; left: 120%; transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="container">
        <div runat="server">
            <h1>User Login</h1>
            <form id="form1" runat="server" class="form-horizontal">
                <div class="form-group">
                    <div class="control-label col-sm-12">
                        <asp:Label ID="Label1" runat="server" Text="Email" />
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" ForeColor="Black" required="true" TextMode="Email" ValidateRequestMode="Disabled" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-12">
                        <asp:Label ID="Label2" runat="server" Text="Password" />
                    </div>
                    <div class="col-sm-12">
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" ForeColor="Black" required="true" TextMode="Password" ValidateRequestMode="Disabled" />
                    </div>
                </div>
                <div class="form-group action-buttons">
                    <asp:Button ID="Register" runat="server" BackColor="White" ForeColor="Black" OnClick="Btn_Submit" Text="Login" />
                    <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" OnClick="Btn_reg" Text="Sign Up" />
                </div>
                <span class="square square-tl"></span>
                <span class="square square-tr"></span>
                <span class="square square-bl"></span>
                <span class="square square-br"></span>
                <span class="star star1"></span>
                <span class="star star2"></span>
            </form>
        </div>
    </div>
</body>
</html>
