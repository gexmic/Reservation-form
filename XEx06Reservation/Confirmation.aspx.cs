using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
    public partial class Confirmation : System.Web.UI.Page

    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayReservation();
        }

        protected void btnConfirmRequest_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thank you for your resquest.\nWe will get back to you within 24 hours.";
            
            HttpCookie cookie = new HttpCookie("userInfo");
            cookie.Values["userFirstName"] =  lblFirstName.Text;
            cookie.Values["userEmail"] = lblEmail.Text;
            cookie.Expires = DateTime.Now.AddMonths(6);

            Response.Cookies.Add(cookie);

        }

        protected void btnModifyRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Request.aspx");
        }

        private void DisplayReservation()
        {


            // get current info from session state
            Reservation reservation = (Reservation)Session["Reservation"];

            lblFirstName.Text = reservation.FirstName;
            lblLastName.Text = reservation.LastName;
            lblEmail.Text = reservation.Email;
            lblPhone.Text = reservation.Phone;
            lblPreferedMethode.Text = reservation.PreferredMethod;

          
            lblArrivalDate.Text = reservation.ArrivalDate.ToShortDateString();
            lblDepartureDate.Text = reservation.DepartureDate.ToShortDateString();
            lblNoOfDay.Text = reservation.NoOfDays.ToString();
            lblNoOfPeople.Text = reservation.NoOfPeople.ToString();
            lblBedType.Text = reservation.BedType;
            lblSpecialRequests.Text = reservation.SpecialRequests;
        }
    }
}