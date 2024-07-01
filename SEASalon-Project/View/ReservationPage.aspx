<%@ Page Title="" Language="C#" MasterPageFile="~/View/General.Master" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="SEASalon_Project.View.CartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, 'Sans Serif Collection';
            background-color: #f0f0f0;
            padding: 20px;
        }

        .container {
            width: 60%;
            margin: 0 auto;
            background-color: whitesmoke;
            padding: 20px;
            border: 2px solid #779ECB;
            border-radius: 10px;
            margin-top: 20px;
        }

        .form-container {
            display: grid;
            gap: 10px;
        }

        .sub-container {
            display: grid;
            gap: 5px;
        }

        .form-label {
            font-weight: bold;
        }

        .btn-submit {
            background-color: #88AED0;
            color: whitesmoke;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Make a Reservation</h1>
        <div class="form-container">
            <div class="sub-container">
                <asp:Label ID="Lbl_ServisType" runat="server" CssClass="form-label" Text="Service Type:"></asp:Label>
                <asp:DropDownList ID="Ddl_ServisType" runat="server">
                    <asp:ListItem Text="Haircut" Value="Haircut" />
                    <asp:ListItem Text="Manicure Pedicure" Value="Manicure Pedicure" />
                    <asp:ListItem Text="Facial" Value="Facial" />
                </asp:DropDownList>
                <span style="font-size: 0.8em; color: #777;">(Services are available from 9 AM to 9 PM)</span>
            </div>
            <div class="sub-container">
                <asp:Label ID="Lbl_DateTime" runat="server" CssClass="form-label" Text="Date and Time:"></asp:Label>
                <asp:TextBox ID="Tb_DateTime" runat="server" placeholder="YYYY-MM-DD HH:MM" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="sub-container">
                <asp:Button ID="Btn_Reserve" runat="server" Text="Make Reservation" OnClick="Btn_Reserve_Click" CssClass="btn-submit" />
            </div>
            <asp:Label ID="Lbl_Status" runat="server" CssClass="status-label" Visible="false"></asp:Label>
        </div>
    </div>

    <!-- Display Reservation Table -->
    <div class="container">
        <asp:GridView ID="GridViewReservations" runat="server" CssClass="table-blue" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="ServisType" HeaderText="Service Type" />
                <asp:BoundField DataField="DateTime" HeaderText="Date and Time" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
