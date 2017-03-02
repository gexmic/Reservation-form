<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="XEx06Reservation.Confirmation" %>
<%@ MasterType VirtualPath="~/Site.Master" %>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
                <h1>Request Confirmation</h1>

                <h3>Please confirm your reservation request</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First name</label>
                    <div class="col-sm-4">
                        <asp:Label ID="lblFirstName" runat="server" CssClass="col-sm-4 control-label" ></asp:Label>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last name</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblLastName" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                 <div class="form-group">
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblEmail" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Phone</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblPhone" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblPreferedMethode" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <h3>Request data</h3>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival date</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblArrivalDate" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Departure date</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblDepartureDate" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">No. of day</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblNoOfDay" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">No. of people</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblNoOfPeople" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed type</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblBedType" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Special requests</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:Label ID="lblSpecialRequests" runat="server" CssClass="col-sm-3 control-label"></asp:Label>
                    </div>                    
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnComfirmRequest" runat="server" Text="Confirm Request"
                            CssClass="btn btn-primary" OnClick="btnConfirmRequest_Click" CausesValidation="false" />
                        <asp:Button ID="btnModifyRequest" runat="server" Text="Modify Request"
                            CssClass="btn btn-primary" OnClick="btnModifyRequest_Click" CausesValidation="False" />
                    </div>
                </div>

                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

      </asp:Content>   

