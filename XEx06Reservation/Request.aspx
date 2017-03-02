<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Request.aspx.cs" Inherits="XEx06Reservation.Request" %>

<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">

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
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Date"
                ControlToValidate="txtArrivalDate" Display="Dynamic" CssClass="text-danger">
            </asp:CompareValidator>
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
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator"
                ControlToCompare="txtArrivalDate" ControlToValidate="txtDepartureDate"
                Type="Date" Operator="GreaterThanEqual" CssClass="text-danger" Display="Dynamic">

            </asp:CompareValidator>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-3 control-label">Number of people</label>
        <div class="col-sm-4">
            <!-- drop-down -->
            <asp:DropDownList ID="DropDownListNumOfPeople" runat="server" CssClass="form-control">
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
            <asp:RadioButtonList ID="RadioButtonListBed" runat="server" RepeatDirection="Horizontal">
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
            <asp:TextBox TextMode="MultiLine" ID="TextAreaSpecialRequest" Columns="60" name="S1" Rows="4" runat="server"></asp:TextBox>
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
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailAddress"
                ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display="Dynamic" CssClass="text-danger">

            </asp:RegularExpressionValidator>
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
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTelephoneNumber"
                ErrorMessage="RegularExpressionValidator" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                Display="Dynamic" CssClass="text-danger">

            </asp:RegularExpressionValidator>
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
</asp:Content>


