﻿<%@ Page Language="C#" AutoEventWireup="true"   CodeFile="calculator.aspx.cs" Inherits="calculator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Carbon Footprint Calculator</title>
</head>
<body >
    <form runat="server">
        <div>
            <h2>Carbon Footprint Calculator</h2>
            <br />
            <!-- Add input fields for calculation (e.g., electricity, transportation, waste) -->
            <asp:TextBox ID="txtElectricity" runat="server" placeholder="Electricity Consumption (kWh)"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtTransportation" runat="server" placeholder="Miles Driven"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="txtWaste" runat="server" placeholder="Waste Generated (kg)"></asp:TextBox>

            <br />
            <br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            
            <br />

            <asp:Label ID="lblResult" runat="server" EnableViewState="false"></asp:Label>
              </div>
            <a href="Default.aspx">go home</a>
            
        
    </form>
</body>
</html>

