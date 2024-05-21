<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="LimpopoWorld.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            font-family: "system-ui";
            background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: auto;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background: rgba(255, 255, 255, 0.1);
            display: flex;
            justify-content: center;
            padding: 10px 0;
        }
        li {
            float: left;
            border-right: 1px solid #bbb;
        }
        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .welcome {
            text-align: center;
            margin: 20px 0;
            color: white;
        }
        .tour {
            background-image: url('Pics/homepage.jpg');
            background-size: cover;
            background-position: center;
            text-align: center;
            color: white;
            height: 500px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            opacity: 0.8;
        }
        .tour h2 {
            margin: 0;
            padding: 0;
        }
        .label-info {
            color: white;
            background-color: black;
            opacity: 0.7;
            padding: 20px;
            margin-top: 20px;
            display: inline-block;
        }
        .square.square-tr {
            top: 0%;
            right: -30%;
            animation: bounce 5s infinite ease-in-out;
        }
        .square {
            height: 100vh;
            width: 50vw;
            background: rgba(255, 255, 255, 0.1);
            transform: rotate(45deg);
        }
        .square {
            position: absolute;
            display: table;
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
        .star.star1 {
            bottom: -10%;
            left: -30%;
            transform: rotate(-30deg);
            animation: sweep 4s infinite;
            background: rgba(34, 34, 34, 0.5);
        }
        .star {
            height: 50px;
            width: 50px;
            box-shadow: 0 0 5px 0 rgba(34, 34, 34, 0.5);
            transition: 0.5s;
        }
        .star {
            position: absolute;
            display: table;
        }
        .star.star2 {
            bottom: -30%;
            left: -10%;
            transform: rotate(-30deg);
            animation: sweep 3s infinite;
            background: rgb(255, 255, 255, 0.5);
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="nav navbar-nav navbar-left">
            <li><a href="/userLogin.aspx">Login</a></li>
            <li><a href="/services.aspx">Services</a></li>
            <li><a href="/about.aspx">About Us</a></li>
            <li><a href="/contact.aspx">Contact</a></li>
        </ul>
        <div class="welcome">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <div class="tour">
            <h2>Explore the Tours!</h2>
            <a class="btn btn-primary" href="/DisplayTours.aspx" style="width:300px; height:50px; font-size:x-large;">Explore the Tours!</a>
            <p class="label-info">
                Find the best tour packages without any hustle.<br />
                Book and pack your luggage.
            </p>
        </div>
        <span class="square square-tr"></span>
        <span class="square square-bl"></span>
        <span class="square square-br"></span>
        <span class="star star1"></span>
        <span class="star star2"></span>
    </form>
</body>
</html>
