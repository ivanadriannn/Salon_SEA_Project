<%@ Page Title="" Language="C#" MasterPageFile="~/View/General.Master" AutoEventWireup="true" CodeBehind="BranchPage.aspx.cs" Inherits="SEASalon_Project.View.BranchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 2em;
            background-color: #f4f4f4;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container {
            width: 42%;
            margin: 0 auto;
            background-color: whitesmoke;
            padding: 20px;
            border: 2px solid #779ECB;
            border-radius: 10px;
            margin-top: 20px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .button-insert {
            background-color: #88AED0;
            color: whitesmoke;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-insert:hover {
            background-color: #779BB3;
        }

        .text-success {
            margin-top: 10px;
            color: green;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelAddBranch" runat="server" CssClass="form-container">
        <h2>Add New Branch</h2>
        <asp:Label ID="Lbl_BranchName" runat="server" Text="Branch Name:" AssociatedControlID="Tb_BranchName"></asp:Label>
        <asp:TextBox ID="Tb_BranchName" runat="server" CssClass="form-control" placeholder="Enter branch name"></asp:TextBox>
        <br />
        <asp:Label ID="Lbl_BranchLocation" runat="server" Text="Branch Location:" AssociatedControlID="Tb_BranchLocation"></asp:Label>
        <asp:TextBox ID="Tb_BranchLocation" runat="server" CssClass="form-control" placeholder="Enter branch location"></asp:TextBox>
        <br />
        <asp:Label ID="Lbl_OpeningTime" runat="server" Text="Opening Time:" AssociatedControlID="Tb_OpeningTime"></asp:Label>
        <asp:TextBox ID="Tb_OpeningTime" runat="server" CssClass="form-control" placeholder="Enter opening time (e.g., 09:00 AM)"></asp:TextBox>
        <br />
        <asp:Label ID="Lbl_ClosingTime" runat="server" Text="Closing Time:" AssociatedControlID="Tb_ClosingTime"></asp:Label>
        <asp:TextBox ID="Tb_ClosingTime" runat="server" CssClass="form-control" placeholder="Enter closing time (e.g., 05:00 PM)"></asp:TextBox>
        <br />
        <asp:Button ID="Btn_AddBranch" runat="server" Text="Add Branch" OnClick="Btn_AddBranch_Click" CssClass="button-insert" />
        <br />
        <asp:Label ID="Lbl_BranchStatus" runat="server" CssClass="text-success"></asp:Label>
    </asp:Panel>
    <!-- Display Reservation Table -->
    <div class="container">
        <asp:GridView ID="GridViewBranchs" runat="server" CssClass="table-blue" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="BranchName" HeaderText="Name" />
                <asp:BoundField DataField="BranchLocation" HeaderText="Location" />
                <asp:BoundField DataField="OpeningTime" HeaderText="Open" />
                <asp:BoundField DataField="ClosingTime" HeaderText="Close" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
