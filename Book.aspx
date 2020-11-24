<%@ Page Title="Booking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Booking</h2>
<p>
        <asp:Label ID="lblInfo" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
    </p>
    
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="Label11" runat="server" Text="Region"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
            <asp:ListItem>Limpopo</asp:ListItem>
            <asp:ListItem>Gauteng</asp:ListItem>
            <asp:ListItem>Eastern Cape</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <br />
        <asp:TextBox ID="tb1" runat="server" ToolTip="Your Name" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
        <br />
        <asp:TextBox ID="tb2" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Phone Number"></asp:Label>
        <br />
        <asp:TextBox ID="tb3" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="tb4" runat="server" Width="200px"></asp:TextBox>
        <asp:Label ID="lblEmailError" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="vehicle Make"></asp:Label>
        <br />
        <asp:TextBox ID="tb5" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Vehicle Model"></asp:Label>
        <br />
        <asp:TextBox ID="tb6" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Vehicle Year"></asp:Label>
        <br />
        <asp:TextBox ID="tb7" runat="server" Width="200px"></asp:TextBox>
        <asp:Label ID="lblDateError" runat="server" Text="Please enter only the date in numbers" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Registration Number"></asp:Label>
        <br />
        <asp:TextBox ID="tb8" runat="server" Width="200px"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Current Vehicle km Reading"></asp:Label>
        <br />
        <asp:TextBox ID="tb9" runat="server" Width="200px"></asp:TextBox>
        <asp:Label ID="lblKMError" runat="server" Text="Please only enter numbers" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Engine Capacity"></asp:Label>
        <br />
        <asp:TextBox ID="tb10" runat="server" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnBook" runat="server" OnClick="btnBook_Click" Text="Book Appointment" Width="200px" />
        <br />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Appointments" Width="200px" />
        <br />
        <br />
        <asp:GridView ID="gvTables" runat="server">
        </asp:GridView>
    </asp:Panel>
    
</asp:Content>
