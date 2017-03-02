<!--
///////////////////////////////////////////////////////////////////////
// File:  Assignment 3 
//
// Author: Michael Landry
// This assignment represents my own work and is in accordance with the College Academic Policy
//
// Copyright (c) 2017 All Right Reserved by Michael Landry
// Contributors: 
// Description:  
//
// Date: March 02 2017
// Revisions:
//
/////////////////////////////////////////////////////////////////////
    -->

<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="XEx06Reservation.Confirmation" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    <link href="Content/confirm.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="mainContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <h1>Request Confirmation</h1>

    <h3>Please confirm your reservation request</h3>
    <div class="row">
        <label class="col-sm-3">First name</label>
        <div class="col-sm-4">
            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
        </div>

    </div>
    <div class="row">
        <label class="col-sm-3">Last name</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblLastName" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Email</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Phone</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Preferred method</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblPreferedMethode" runat="server"></asp:Label>
        </div>
    </div>

    <h3>Request data</h3>

    <div class="row">
        <label class="col-sm-3">Arrival date</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblArrivalDate" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Departure date</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblDepartureDate" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">No. of day</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblNoOfDay" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">No. of people</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblNoOfPeople" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Bed type</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblBedType" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <label class="col-sm-3">Special requests</label>
        <div class="col-sm-4">
            <!-- text box -->
            <asp:Label ID="lblSpecialRequests" runat="server"></asp:Label>
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

