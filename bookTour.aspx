<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="LimpopoWorld.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
         .form-group input, .form-group textarea, .form-group select {
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
        .auto-style1 {
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style2 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div runat="server" class="container">
            <div class="page-header">
                <h1>Confirm Tour</h1>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Your Name" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="name" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label3" runat="server" Text="Your City" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="city" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label5" runat="server" Text="Tour Name " />
                    </div>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label10" runat="server" Text="Mobile Number" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="number" runat="server" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-2">
                        <strong>
                        <asp:Button ID="Book" runat="server" BackColor="#04AA6D" class="form-control" ForeColor="White" OnClick="btn_click" Text="Book" CssClass="auto-style2" />
                        </strong>
                        <br />
                    </div>
                    <div class="control-label col-sm-2">
                        <asp:Button ID="Reset" runat="server" BackColor="#04AA6D" class="form-control" ForeColor="White" OnClick="Reset_Click" Text="Reset" type="reset" CssClass="auto-style1" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
