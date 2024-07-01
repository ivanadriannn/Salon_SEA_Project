﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="SEASalon_Project.View.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, 'Sans Serif Collection';
            background-image: url('../Aset/HairBackground.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed
        }

        #RegisterForm {
            display: grid;
            justify-content: center;
            padding: 10vh;
        }

        .container {
            display: grid;
            justify-content: center;
            gap: 3vh;
            border: 2px solid #779ECB;
            border-radius: 4vh;
            padding-left: 5vh;
            padding-right: 5vh;
            padding-bottom: 3vh;
            color: #779ECB;
            background-color: whitesmoke;
        }

        .form-container {
            display: grid;
            justify-content: center;
            gap: 1.5vh;
        }

        .sub-container {
            display: grid;
            gap: 0.5vh;
        }
        
        .subtitle {
            color: #779ECB;
        }

        .btn-submit {
            background-color: #88AED0;
            color: whitesmoke;
            border: none;
            padding: 1vh;
            border-radius: 5px;
            cursor: pointer;
        }

        .input-container {
            display: flex;
            align-items: center;
        }
        
        .input-container input {
            flex: 1;
        }
    </style>
</head>
<body>
    <form id="RegisterForm" runat="server">
        <div class="container">
            <div>
                <h1 class="title">Register</h1>
                <h3 class="subtitle">Already have an account? <asp:HyperLink ID="Hl_Login" runat="server" CssClass="subtitle" NavigateUrl="~/View/LoginPage.aspx">Click Here!</asp:HyperLink></h3>
            </div>
            <div class="form-container">
                <div class="sub-container">
                    <asp:Label ID="Lbl_Name" runat="server" Text="Full Name "></asp:Label>
                    <asp:TextBox ID="Tb_Name" runat="server"></asp:TextBox>
                </div>
                <div class="sub-container">
                    <asp:Label ID="Lbl_Email" runat="server" Text="Email "></asp:Label>
                    <asp:TextBox ID="Tb_Email" runat="server"></asp:TextBox>
                </div>
                <div class="sub-container">
                    <asp:Label ID="Lbl_Phone" runat="server" Text="Phone "></asp:Label>
                    <asp:TextBox ID="Tb_Phone" runat="server" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="sub-container">
                    <asp:Label ID="Lbl_Password" runat="server" Text="Password "></asp:Label>
                    <div class="input-container">
                        <asp:TextBox ID="Tb_Password" runat="server" TextMode="Password "></asp:TextBox>
                    </div>
                </div>
            </div>
            <asp:Label ID="Lbl_Status" runat="server" Text=""></asp:Label>
            <asp:Button ID="Btn_Submit" runat="server" Text="Submit" OnClick="Btn_Submit_Click" CssClass="btn-submit"/>
        </div>
    </form>
</body>
</html>
