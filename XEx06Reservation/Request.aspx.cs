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
        private string currentYear = DateTime.Today.Year.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtArrivalDate.Text = currentDate;
                lblYear.Text = currentYear;
                RadioButtonList1.SelectedIndex = 0;
            }
        }

        private void DisplayReservation()
        {

            // get current info from session state
            Reservation reservation = (Reservation)Session["Reservation"];

            // populate fields on form
            txtArrivalDate.Text = reservation.ArrivalDate.ToShortDateString();
            
            // todo rest of fields on form

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtArrivalDate.Text = currentDate;
            // todo
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thank you for your request. We will get back to you within 24 hours.";
        }
    }
}