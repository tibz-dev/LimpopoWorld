<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="LimpopoWorld.SignUpForm" %>

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
    <br />
    <br />
    <form runat="server">
        <div runat="server" class="container">
            <div class="page-header">
                <h1>User Registration Form </h1>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Email" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="email" runat="server" class="form-control" ForeColor="Black" required="true" TextMode="Email" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label2" runat="server" Text="First Name" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="fname" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label3" runat="server" Text="Last Name" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="lname" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label4" runat="server" Text="Gender" />
                    </div>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="gender" runat="server" class="form-control" ForeColor="Black" Width="361px">
                            <asp:ListItem Text="Male"></asp:ListItem>
                            <asp:ListItem Text="Female"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label5" runat="server" Text="Enter Password" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="password1" runat="server" class="form-control" ForeColor="Black" required="true" type="password" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label6" runat="server" Text="Re-enter Password" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="password2" runat="server" class="form-control" ForeColor="Black" required="true" type="password" />
                    </div>
                    <br />
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label7" runat="server" Text="Date of birth(dd-mm-yyyy)" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="dob" runat="server" class="form-control" ForeColor="Black" required="true" TextMode="Date" Width="365px" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label9" runat="server" Text="Street" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="street" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label10" runat="server" Text="City" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="city" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-4">
                        <asp:Label ID="Label11" runat="server" Text="State" />
                    </div>
                    <div class="col-sm-6">
                        <asp:TextBox ID="state" runat="server" class="form-control" ForeColor="Black" required="true" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="control-label col-sm-2">
                        <asp:Button ID="Register" runat="server" BackColor="#cc6600" class="form-control" ForeColor="Black" OnClick="Register_Click" Text="Register" />
                    </div>
                    <div class="control-label col-sm-2">
                        <asp:Button ID="Reset" runat="server" BackColor="#cc6600" class="form-control" ForeColor="Black" Text="Reset" />
                    </div>
                </div>
            </div>
        </div>
        <span class="square square-tl"></span>
        <span class="square square-tr"></span>
        <span class="square square-bl"></span>
        <span class="square square-br"></span>
        <span class="star star1"></span>
        <span class="star star2"></span>
    </form>
</body>
</html>
