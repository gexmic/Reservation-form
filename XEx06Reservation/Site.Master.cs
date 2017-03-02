﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XEx06Reservation
{
    public partial class Site : System.Web.UI.MasterPage
    {
        private string currentYear = DateTime.Today.Year.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYear.Text = currentYear;
        }
    }
}