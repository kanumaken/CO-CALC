<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
    font-family: Arial, sans-serif;
    background-image: url('green.png');
    background-size: cover;
    background-position: center;
    background-attachment: fixed; /* Keeps the background image fixed while scrolling */
   

        }
        .container{
            font-family: Arial, sans-serif;
            background-image: url('green,png'); /* Specify your background image */
            background-size: cover; /* Ensure the background image covers the entire element */
            backdrop-filter: blur(10px); /* Apply a blur effect to the background */
            -webkit-backdrop-filter: blur(10px); /* For Safari */ 
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>

    <div class="container">
        <h1>Contact Us</h1>
        <div class="contact-form">
            
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <input type="submit" value="Submit">
            
        </div>
    </div>

</asp:Content>
