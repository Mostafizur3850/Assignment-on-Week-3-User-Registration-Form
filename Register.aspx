<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>User Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Registration Form</h2>
            <asp:Label runat="server" Text="First Name:" /><br />
            <asp:TextBox ID="txtFirstName" runat="server" /><br /><br />

            <asp:Label runat="server" Text="Last Name:" /><br />
            <asp:TextBox ID="txtLastName" runat="server" /><br /><br />

            <asp:Label runat="server" Text="Email:" /><br />
            <asp:TextBox ID="txtEmail" runat="server" /><br /><br />

            <asp:Label runat="server" Text="Password:" /><br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Label runat="server" Text="Confirm Password:" /><br />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" /><br /><br />

            <asp:Label runat="server" Text="Gender:" /><br />
            <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
            <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" /><br /><br />

            <asp:Label runat="server" Text="Role:" /><br />
            <asp:DropDownList ID="ddlRole" runat="server">
                <asp:ListItem Text="Select Role" />
                <asp:ListItem Text="Admin" />
                <asp:ListItem Text="Manager" />
                <asp:ListItem Text="Employee" />
            </asp:DropDownList><br /><br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
