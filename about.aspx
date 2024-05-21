<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="LimpopoWorld.about" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
            min-height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
            text-align: center;
            width: 100%;
            max-width: 800px;
        }
        .container h1 {
            margin-bottom: 30px;
        }
        .content {
            margin-bottom: 20px;
        }
        .content p {
            margin: 10px 0;
        }
        .team {
            margin-top: 30px;
        }
        .team-member {
            margin-bottom: 20px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }
        .team-member h2 {
            margin-bottom: 10px;
        }
        .team-member p {
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>About Us</h1>
            <div class="content">
                <p>Welcome to LimpopoWorld! We are dedicated to providing you with the best travel experiences in the beautiful Limpopo region. Our team is passionate about exploring the wonders of nature and sharing them with our valued customers.</p>
                <p>We offer a wide range of tours and services that cater to all types of travelers, from adventure seekers to those looking for a relaxing getaway. Our mission is to create unforgettable memories for you and your loved ones.</p>
            </div>
            <div class="team">
                <h2>Our Team</h2>
                <div class="team-member">
                    <h2>John Doe</h2>
                    <p>Founder & CEO</p>
                    <p>John has over 20 years of experience in the travel industry and is passionate about showcasing the beauty of Limpopo to the world.</p>
                </div>
                <div class="team-member">
                    <h2>Jane Smith</h2>
                    <p>Operations Manager</p>
                    <p>Jane ensures that every tour runs smoothly and that our customers have a seamless and enjoyable experience.</p>
                </div>
                <div class="team-member">
                    <h2>Mike Johnson</h2>
                    <p>Head of Marketing</p>
                    <p>Mike is responsible for spreading the word about our amazing tours and services. He loves connecting with our customers and hearing their stories.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
