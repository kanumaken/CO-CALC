﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class calculator : Page
{
    protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic (if needed)
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Implement carbon footprint calculation logic
            // Get input values from textboxes or other input controls
            double electricityConsumption = Convert.ToDouble(txtElectricity.Text);
            double milesDriven = Convert.ToDouble(txtTransportation.Text);
            double wasteGenerated = Convert.ToDouble(txtWaste.Text);

            // Calculate carbon footprint (use appropriate factors)
            double electricityEmissions = electricityConsumption * 0.4; // Example emission factor
            double transportationEmissions = milesDriven * 2.5; // Example emission factor
            double wasteEmissions = wasteGenerated * 0.1; // Example emission factor

            double totalCarbonFootprint = electricityEmissions + transportationEmissions + wasteEmissions;

            // Display result
            lblResult.Text = $"Total Carbon Footprint: {totalCarbonFootprint} kg CO2";
        }
    
}


