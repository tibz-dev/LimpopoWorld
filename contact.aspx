<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="LimpopoWorld.contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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
            max-width: 600px;
        }
        .container h1 {
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background: rgba(255, 255, 255, 0.7);
            color: black;
        }
        .form-group textarea {
            resize: none;
        }
        .form-group button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background: #1F1C18;
            color: white;
            cursor: pointer;
            transition: background 0.3s;
        }
        .form-group button:hover {
            background: #8E0E00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Contact Us</h1>
            <div class="form-group">
                <label for="name">Name</label>
                <asp:TextBox ID="txtName" runat="server" class="form-control" required="true" />
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" TextMode="Email" required="true" />
            </div>
            <div class="form-group">
                <label for="subject">Subject</label>
                <asp:TextBox ID="txtSubject" runat="server" class="form-control" required="true" />
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <asp:TextBox ID="txtMessage" runat="server" class="form-control" TextMode="MultiLine" Rows="5" required="true" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Btn_Submit" />
            </div>
        </div>
    </form>
</body>
</html>
