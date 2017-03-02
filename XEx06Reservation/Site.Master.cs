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
    public partial class Site : System.Web.UI.MasterPage
    {
        private string currentYear = DateTime.Today.Year.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            // set current year in the lable in the footer
            lblYear.Text = currentYear;
        }
    }
}