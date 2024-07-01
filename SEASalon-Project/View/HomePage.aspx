<%@ Page Title="" Language="C#" MasterPageFile="~/View/General.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SEASalon_Project.View.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 2vh;
        }

        .left-panel {
            flex: 6;
            padding-right: 2em;
            padding-left: 0.7em;
            font-size: 2em;
            color: white;
            text-align: justify;
            font-weight: bold;
        }

        .left-panel p {
            font-size: 1.5em;
            line-height: 1.3;
            color: white;
            margin-top: 10px;
            margin-bottom: 10px;
            text-align: left;
            font-weight: normal;
            width: 100%;
            border: 2px solid yellow;
            padding: 5px;
            box-shadow: 0 0 10px yellow;
            text-shadow: 0 0 5px yellow;
        }

        .left-panel .highlight {
            background-color: rgba(255, 255, 0, 0.7);
            padding: 3px 5px;
            border-radius: 5px;
            font-weight: bold;
            color: black;
            box-shadow: 0 0 5px rgba(255, 255, 0, 0.7);
        }

        .right-panel {
            flex: 2;
            color: white;
        }

        .button-insert {
            background-color: #88AED0;
            color: whitesmoke;
            border: none;
            padding: 1vh;
            border-radius: 1vh;
            cursor: pointer;
        }

        .add-container {
            display: grid;
            justify-content: center;
            padding: 2vh;
        }

        .modal-confirm {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .modal-content h2 {
            margin-top: 0;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .btn-confirm, .btn-cancel {
            background-color: #88AED0;
            color: whitesmoke;
            border: none;
            padding: 1vh;
            border-radius: 1vh;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-cancel {
            background-color: red;
        }

        .table-blue {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #88AED0;
            margin-top: 20px;
            margin-left: 0.2em;
        }

        .table-blue th,
        .table-blue td {
            border: 1px solid #88AED0;
            padding: 12px;
            text-align: left;
            color: white;
        }

        .table-blue th {
            background-color: #88AED0;
            text-align: center;
            font-size: 1.2em;
        }

        .service-collection, .gift-collection{
            padding-top: 2vw;
            padding-left: 1.5vw;
            padding-right: 1vw;
        }

        .area-img h1{
            font-size: 0.5em;
        }

        .area-service, 
        .area-gift{
            width: 50vw;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            background: rgba(80, 69, 69, 0.5);
            border-radius: 30px;
            backdrop-filter: blur(20px);
            padding-top: 1.5vw;
            padding-bottom: 1.5vw;
            padding-left: 0.5vw;
            padding-right: 0.5vw;
        }

        .area-service .area-img, 
        .area-gift .area-img {
            width: 5vw;
            height: 5vw; 
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow: hidden;
            flex-basis: 0;
            flex-grow: 1;
            text-align: center;
            max-width: 100%;
            height: auto;
        }

        .area-service .area-img img, 
        .area-gift .area-img img {
            width: 100%;
            height: 100%;
            object-fit: cover; 
            border-radius: 15px;
        }

        .service-collection h2, 
        .gift-collection h2{
            padding-left: 1vw;
            font-size: 3vw;
            color: #ffffff; 
        }

        .contact-details {
            margin-top: 20px;
            margin-bottom: 20px;
            border: 2px solid yellow;
            padding: 10px;
            box-shadow: 0 0 10px yellow;
            text-shadow: 0 0 5px yellow;
        }

        .contact {
            margin-bottom: 10px;
        }

        .contact-name {
            font-weight: bold;
            font-size: 1.2em;
            color: white;
        }

        .contact-phone {
            color: white;
            margin-left: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="left-panel">
            <h1>Beauty and Elegance Redefined</h1>
            <br />
            <p>
                We offer you
                <span class="highlight">Haircuts and Styling</span>,
                <span class="highlight">Manicure and Pedicure</span>,
                <span class="highlight">Facial Treatments</span>
            </p>

        <div class="service-collection">
            <h2>Our Services -></h2>
            <div class="area-service">
                <div class="area-img">
                    <asp:ImageButton ID="Service1" runat="server" AlternateText="Service1" ImageUrl="~/Aset/HairCut.jpg" Width="100" />
                    <h1>Haircuts and Styling</h1>
                </div>
                <div class="area-img">
                    <asp:ImageButton ID="Service2" runat="server" AlternateText="Service2" ImageUrl="~/Aset/PedicureMenicure.jpg" Width="100" />
                    <h1>Manicure and Pedicure</h1>
                </div>
                <div class="area-img">
                    <asp:ImageButton ID="Service3" runat="server" AlternateText="Service3" ImageUrl="~/Aset/FacialTreatment.jpg" Width="100" />
                    <h1>Facial Treatments</h1>
                </div>
            </div>
        </div>

        <div class="gift-collection">
            <h2>A Gift that Everyone needs -></h2>
            <div class="area-gift">
                <div class="area-img">
                    <asp:ImageButton ID="Voucher1" runat="server" AlternateText="Voucher1" ImageUrl="~/Aset/Voucher1.png" Width="100" />
                    <h1>Gift Voucher</h1>
                    <h1>Rp.500.000</h1>
                </div>
                <div class="area-img">
                    <asp:ImageButton ID="Voucher2" runat="server" AlternateText="Voucher2" ImageUrl="~/Aset/Voucher2.png" Width="100" />
                    <h1>Gift Voucher</h1>
                    <h1>Rp.800.000</h1>
                </div>
                <div class="area-img">
                    <asp:ImageButton ID="Voucher3" runat="server" AlternateText="Voucher3" ImageUrl="~/Aset/Voucher3.png" Width="100" />
                    <h1>Gift Voucher</h1>
                    <h1>Rp.1.000.000</h1>
                </div>
            </div>
        </div>
        </div>

        <div class="right-panel">
            <!-- Rating Form -->
            <div class="add-container">
                <h2>Leave a Rating</h2>
                <asp:TextBox ID="Tb_CustomerName" runat="server" CssClass="form-control" placeholder="Customer Name" Required="true"></asp:TextBox>
                <br />
                <asp:DropDownList ID="Ddl_Rating" runat="server">
                    <asp:ListItem Text="1" Value="1" />
                    <asp:ListItem Text="2" Value="2" />
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="4" Value="4" />
                    <asp:ListItem Text="5" Value="5" />
                </asp:DropDownList>
                <br />
                <asp:TextBox ID="Tb_Comment" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Comment"></asp:TextBox>
                <br />
                <asp:Button ID="Btn_ShowModal" runat="server" Text="Show Confirmation" OnClientClick="return ShowModal();" CssClass="button-insert" />
                <asp:Button ID="Btn_SubmitRating" runat="server" Text="Submit Rating" OnClick="Btn_SubmitRating_Click" CssClass="button-insert" Style="display: none;" />
                <br />
                <asp:Label ID="Lbl_RatingStatus" runat="server" CssClass="text-success"></asp:Label>

                <!-- Display Ratings Table -->
                <div class="container">
                    <asp:GridView ID="GridViewRatings" runat="server" CssClass="table-blue" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                            <asp:BoundField DataField="Value" HeaderText="Rating" />
                            <asp:BoundField DataField="Comment" HeaderText="Comment" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
         </div>
    </div>

    <!-- Modal -->
    <div id="ModalConfirm" class="modal-confirm">
        <div class="modal-content">
            <span class="close" onclick="CloseModal()">&times;</span>
            <h2>Confirm Rating Submission</h2>
            <p>Customer Name: <span id="ConfirmCustomerName"></span></p>
            <p>Rating: <span id="ConfirmRating"></span></p>
            <p>Comment: <span id="ConfirmComment"></span></p>
            <asp:Button ID="Btn_ConfirmSubmit" runat="server" Text="Confirm" OnClientClick="return ConfirmSubmit();" CssClass="btn-confirm" />
            <button type="button" class="btn-cancel" onclick="CloseModal()">Cancel</button>
        </div>
    </div>

    <script>
        function ShowModal() {
            document.getElementById("ConfirmCustomerName").innerText = document.getElementById("<%= Tb_CustomerName.ClientID %>").value;
            document.getElementById("ConfirmRating").innerText = document.getElementById("<%= Ddl_Rating.ClientID %>").value;
            document.getElementById("ConfirmComment").innerText = document.getElementById("<%= Tb_Comment.ClientID %>").value;

            var modal = document.getElementById("ModalConfirm");
            modal.style.display = "block";
            return false; // Prevent default form submission
        }

        function CloseModal() {
            var modal = document.getElementById("ModalConfirm");
            modal.style.display = "none";
        }

        function ConfirmSubmit() {
            var modal = document.getElementById("ModalConfirm");
            modal.style.display = "none";
            document.getElementById("<%= Btn_SubmitRating.ClientID %>").click();
            return false; // Prevent default form submission
        }
    </script>
</asp:Content>
