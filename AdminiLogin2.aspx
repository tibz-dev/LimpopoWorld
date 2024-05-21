<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminiLogin2.aspx.cs" Inherits="LimpopoWorld.AdminiLogin2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body {
        font-family: "Quicksand";
        background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
        overflow: hidden;
        }

         .container 
         {
             color: white; /* Sets the text color to white */
            text-align: center; /* Centers the text horizontally */
            background-color: linear-gradient(to right bottom,
            rgba(255, 255, 255, 0.2),
            rgba(255, 255, 255, 0.1)); /* Sets the background color to black with 80% opacity */
            width: 100%; /* Sets the width to 100% of the parent element */
            font-size: 30px; /* Sets the font size to 30 pixels */
            padding-bottom: 150px;
        }

                 .square {
            height: 100vh;
            width: 50vw;
            display: table;
            position: absolute;
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
            0% { transform: translateY(0px) rotate(45deg) }
            50% { transform: translateY(20px) rotate(45deg); border-radius: 50px; }
            100% { transform: translateY(0px) rotate(45deg) }
        }

        .star {
            height: 50px;
            width: 50px;
            display: table;
            position: absolute;
            box-shadow: 0 0 5px 0 rgba(34, 34, 34, 0.5);
            transition: 0.5s;
        }

        .star1 {
            bottom: -10%;
            left: -30%;
            transform: rotate(-30deg);
            animation: sweep 4s infinite;
            background: rgba(34, 34, 34, 0.5);
        }

        .star2 {
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
        <div class="container">
            <h1>Admin Login</h1>
            <asp:Label ID="name1" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="password1" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
        </div>
        
    </form>
  
        <span class="square square-tr"></span>
        <span class="square square-bl"></span>
        <span class="square square-br"></span>
        <span class="star star1"></span>
        <span class="star star2"></span>
</body>
</html>
