<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="LimpopoWorld.services" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Services</title>
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
        .service {
            margin-bottom: 20px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }
        .service h2 {
            margin-bottom: 10px;
        }
        .service p {
            margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Our Services</h1>
            <div class="service">
                <h2>Service 1</h2>
                <p>Description of service 1.</p>
            </div>
            <div class="service">
                <h2>Service 2</h2>
                <p>Description of service 2.</p>
            </div>
            <div class="service">
                <h2>Service 3</h2>
                <p>Description of service 3.</p>
            </div>
        </div>
    </form>
</body>
</html>
