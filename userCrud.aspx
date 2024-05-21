<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userCrud.aspx.cs" Inherits="LimpopoWorld.userCrud" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User CRUD Operations</title>
    <style type="text/css">
        body {
            font-family: "system-ui";
            background: linear-gradient(to right bottom, #8E0E00, #1F1C18);
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            padding: 20px;
        }
        .grid-view {
            width: 90%;
            margin: 20px auto;
            background-color: #333;
            border-collapse: collapse;
            text-align: center;
        }
        .grid-view th, .grid-view td {
            padding: 15px;
        }
        .grid-view th {
            background-color: #444;
            color: white;
        }
        .grid-view td {
            background-color: #555;
        }
        .grid-view tr:nth-child(even) {
            background-color: #666;
        }
        .grid-view tr:hover {
            background-color: #777;
        }
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .action-buttons a, .action-buttons input {
            background-color: #04AA6D;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .action-buttons a:hover, .action-buttons input:hover {
            background-color: #028a5e;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" 
                DataKeyNames="Email" DataSourceID="SqlDataSource1" CssClass="grid-view">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <div class="action-buttons">
                                <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </div>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <div class="action-buttons">
                                <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" 
                SelectCommand="SELECT * FROM UserInfo"
                UpdateCommand="UPDATE [UserInfo] SET [FirstName]=@FirstName, [LastName]=@LastName, [Gender]=@Gender, [Password]=@Password, [City]=@City WHERE [Email]=@Email">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
