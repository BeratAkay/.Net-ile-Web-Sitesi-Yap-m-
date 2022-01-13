 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMİN.aspx.cs" Inherits="FİNAL.ADMİN" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login User</title>
    <link rel="stylesheet" href="Admin/style.css">
</head>
<body>

    <div class="container">
        <div class="contact-form">
            <img src="Admin/admin.jpeg" width="150" height="200" class="admin-img">
            <h2>
                Admin Login
            </h2>
            <form id=form1 runat="server">
                
                <div class="txtb">
                    <asp:TextBox ID="adminKullanici" type="Text" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="txtb">
                    <asp:TextBox ID="Password" type="password" runat="server" placeholder="Password"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" class="logbtn"  Text="Login" value="Login" OnClick="Button1_Click"/>
                
                    
                <br />
                <br />
                <div style="text-align:center">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                
                    
            </form>
                
        </div>
    </div>
    
</body>
</html>
