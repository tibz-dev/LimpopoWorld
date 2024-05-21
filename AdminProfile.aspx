<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="LimpopoWorld.AdminProfile" %>

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

         ul 
         {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #333;
        }

li {
  float: left;
  border-right:1px solid #bbb;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.page-header {
            background-image: url('Pics/adminhp.jpg');
             background-size: cover;
            text-align:center;
            color:white;
            height:500px;
            background-color:white;
             opacity:0.8;
             justify-content: center;
             vertical-align:central;
        } 
        .page-header{
            text-align:center;

        }
         .page-header h2{
            align-items:center;
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
    <ul class="nav navbar nav-tabs">
        <li class="pull-left"><a href="/AdminProfile.aspx">Profile </a></li>
        <li class="pull-left"><a href="/AddTours.aspx">Add Tours</a></li>
        <li class="pull-left"><a href="/TourCrud.aspx">Manage Tours</a></li>
        <li class="pull-left" style="width: 163px"><a href="/allbooking.aspx">Current Booking</a></li>
        <li class="pull-right"><a href="/AdminiLogin2.aspx">Logout</a></li>
    </ul>
    <div class="page-header">
        <h2>
            <br />
            <br />
            <br />
        </h2>
        <h1>Welcome to the Admin Section </h1>
        <p>
            You can manage the admin work here.<br />
            You can add tours and places for customers.
        </p>
        <h2></h2>
    </div>
   
    <span class="square square-tr"></span>
    <span class="square square-bl"></span>
    <span class="square square-br"></span>
    <span class="star star1"></span>
    <span class="star star2"></span>
</body>
</html>
