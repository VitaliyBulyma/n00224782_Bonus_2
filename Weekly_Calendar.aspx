<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Weekly_Calendar.aspx.cs" Inherits="Weekly_Calendar.Weekly_Calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weekly Calendar</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />

</head>
<body>
    
    <h1>Daily Schedule</h1>
    <form id="form1" runat="server">
        <h2>Select your activity for every day of the week:</h2>
        <div id="mon">
            <label>Monday</label>
            <asp:DropDownList runat="server" ID="Monday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <%--InitialValue="0"  found at BhaskarBhaskar. “How to Add a RequiredFieldValidator to DropDownList Control?” Stack Overflow, 1 June 1960, stackoverflow.com/questions/2280559/how-to-add-a-requiredfieldvalidator-to-dropdownlist-control.--%>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0" 
                ControlToValidate="Monday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="tue">
            <label>Tuesday</label>
            <asp:DropDownList runat="server" ID="Tuesday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Tuesday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="wed">
            <label>Wednesday</label>
            <asp:DropDownList runat="server" ID="Wednesday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Wednesday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="thu">
            <label>Thursday</label>
            <asp:DropDownList runat="server" ID="Thursday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Thursday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="fri">
            <label>Friday</label>
            <asp:DropDownList runat="server" ID="Friday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Friday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="sat">
            <label>Saturday</label>
            <asp:DropDownList runat="server" ID="Saturday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Saturday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        <div id="sun">
            <label>Sunday</label>
            <asp:DropDownList runat="server" ID="Sunday">
                <asp:ListItem Value="0">-Select One-</asp:ListItem>
                <asp:ListItem Value="have fun!">Fun</asp:ListItem>
                <asp:ListItem Value="work...">Work</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                InitialValue="0"
                ControlToValidate="Sunday"
                ErrorMessage="Select Activity"></asp:RequiredFieldValidator>
        </div>
        
        <asp:Button runat="server" Text="Submit" ID="submit_button" />
        <div runat="server" id="schedule_summary"></div>
    </form>
        
        

    
</body>
</html>
