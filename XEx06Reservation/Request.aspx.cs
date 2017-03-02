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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
    public partial class Request : System.Web.UI.Page
    {
        private string currentDate = DateTime.Today.ToShortDateString();
       

        private Reservation reservation;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(reservation == null)
                {
                    // using cookies to retrive information about the user

                    if (Request.Cookies["userInfo"] != null)
                    {
                        txtFirstName.Text = Server.HtmlEncode(Request.Cookies["userInfo"]["userFirstName"]);                  
                        txtEmailAddress.Text = Server.HtmlEncode(Request.Cookies["userInfo"]["userEmail"]);
                    }
                }
                reservation = (Reservation)Session["Reservation"];
                txtArrivalDate.Text = currentDate;
                
                RadioButtonListBed.SelectedIndex = 0;
                DisplayReservation();
            }

            if (IsPostBack)
            {
                DisplayReservation();
            }
        }
       
        private void DisplayReservation()
        {
            if (reservation != null)
            {
                // get current info from session state
                Reservation reservation = (Reservation)Session["Reservation"];

                // populate fields on form
                txtArrivalDate.Text = reservation.ArrivalDate.ToShortDateString();

                // todo rest of fields on form
                txtDepartureDate.Text = reservation.DepartureDate.ToShortDateString();
                DropDownListNumOfPeople.SelectedIndex = reservation.NoOfPeople - 1;
                RadioButtonListBed.SelectedIndex = reservation.bedTypeNum;
                TextAreaSpecialRequest.Text = reservation.SpecialRequests;
                txtFirstName.Text = reservation.FirstName;
                txtLastName.Text = reservation.LastName;
                txtEmailAddress.Text = reservation.Email;
                txtTelephoneNumber.Text = reservation.Phone;
                DropDownListPrefferred.SelectedIndex = reservation.PrefferedMethodNum;
            }



        }
        // I use btnClear_click1
        protected void btnClear_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // if the form is valid go to the next page confirmation
            if (IsValid)
            {
                lblMessage.Text = "Thank you for your request. We will get back to you within 24 hours.";
                GetCustomerData();
                Response.Redirect("~/Confirmation.aspx");
            }
        }

        protected void btnClear_Click1(object sender, EventArgs e)
        {
            // cleat all the fiel in the form
            txtArrivalDate.Text = currentDate;
            txtDepartureDate.Text = null;
            DropDownListNumOfPeople.SelectedIndex = 0;
            RadioButtonListBed.SelectedIndex = 0;
            TextAreaSpecialRequest.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmailAddress.Text = "";
            txtTelephoneNumber.Text = "";
            DropDownListPrefferred.SelectedIndex = 0;

            // if the cookie userInfo is not not set the date the day before to delete
            // the information store in the cookie for the user first name and email
            if (Request.Cookies["userInfo"] != null)
            {
                HttpCookie cookie = Request.Cookies["userInfo"];
                cookie.Expires = DateTime.Now.AddDays(-1);

                Response.Cookies.Add(cookie);
            }

        }

        private void GetCustomerData()
        {
            if (reservation == null)
                reservation = new Reservation();
            
            reservation.NoOfDays = NumberOfDay();
            reservation.NoOfPeople = Convert.ToInt16(DropDownListNumOfPeople.SelectedIndex + 1);
            reservation.BedType = RadioButtonListBed.SelectedValue;
            reservation.bedTypeNum = RadioButtonListBed.SelectedIndex;
            reservation.SpecialRequests = TextAreaSpecialRequest.Text;
            reservation.FirstName = txtFirstName.Text;
            reservation.LastName = txtLastName.Text;
            reservation.Email = txtEmailAddress.Text;
            reservation.Phone = txtTelephoneNumber.Text;
            reservation.PreferredMethod = DropDownListPrefferred.Text;
            reservation.PrefferedMethodNum = Convert.ToInt16(DropDownListPrefferred.SelectedIndex + 1 );

            Session["Reservation"] = reservation;
        }

        // this function calculate the number of day the person what to stay at the hotel
        private int NumberOfDay()
        {
            DateTime arrivalDate = Convert.ToDateTime(txtArrivalDate.Text);
            DateTime departureDate = Convert.ToDateTime(txtDepartureDate.Text);

            int numberOfDay = (departureDate - arrivalDate).Days;
            return numberOfDay;
        }
    }
}