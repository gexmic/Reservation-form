<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="XEx06Reservation.Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 6: Reservations</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header class="jumbotron">
            <img src="Images/logo.png" alt="Royal Inns and Suites" />
        </header>

        <main>
            <form id="form1" runat="server" class="form-horizontal">
                <h1>Reservation Request</h1>

                <asp:ValidationSummary ID="ValidationSummary" CssClass="text-danger" runat="server" HeaderText="* means that the field is required" />

                <h3>Request data</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvArrivalDate" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtArrivalDate">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Departure Date</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date"
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvDepartureDate" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtDepartureDate">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Number of people</label>
                    <div class="col-sm-4">
                        <!-- drop-down -->
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed type</label>
                    <div class="col-sm-9 bedtype">
                        <!-- radio buttons -->
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>King</asp:ListItem>
                            <asp:ListItem>Two Queens</asp:ListItem>
                            <asp:ListItem>One Queen</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>

                <h3>Special requests</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <!-- multiline text box -->
                        <textarea id="TextAreaSpecialRequest" cols="60" name="S1" rows="4" runat="server"></textarea>
                    </div>
                </div>

                <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">

                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtFirstName">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtLastName">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtEmailAddress" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtEmailAddress">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtTelephoneNumber" TextMode="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="col-sm-4">
                        <asp:RequiredFieldValidator ID="rfvTelephone" runat="server"
                            CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtTelephoneNumber">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <!-- drop down -->
                        <asp:DropDownList ID="DropDownListPrefferred" runat="server" CssClass="form-control">
                            <asp:ListItem>Email</asp:ListItem>
                            <asp:ListItem>Telephone</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                            CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                            CssClass="btn btn-primary" OnClick="btnClear_Click1" CausesValidation="False" />
                    </div>
                </div>

                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            </form>
        </main>

        <footer>
            <p>
                &copy;
                <asp:Label ID="lblYear" runat="server"></asp:Label>
                Royal Inns and Suites
            </p>
        </footer>
    </div>

</body>
</html>
