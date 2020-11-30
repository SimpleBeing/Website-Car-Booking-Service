<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Shumani Industrial</span></h1>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="370px" ImageAlign="Middle" ImageUrl="~/download (1).jpg" Width="625px" />
        </p>
        <p>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>About Us</h2>
            <p class="MsoNormal">
                Looking for peace of mind? <span>Industrial Automotive Workshop</span> is RMI-accredited and meets AA&#39;s strict Quality Assured standards, our mechanics are also trained to service all makes and models using only premium parts!<o:p></o:p></p>
            <p>
                <a class="btn btn-default" href="About.aspx">Info and About &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Booking</h2>
            <p class="MsoNormal">
                We do major and minor repairs to all makes &amp; models using Bosch’s state-of-the-art diagnostic equipment. The accuracy of our repair work is second to none. For an expert assessment book now!<o:p></o:p></p>
            <p>
                <a class="btn btn-default" href="Book.aspx">Book &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Contact Us</h2>
            <p>
                If you want to know more then please contact us. Out details are in the following link
            </p>
            <p>
                <a class="btn btn-default" href="Contact.aspx">Contact Us &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
