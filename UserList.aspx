<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Registered Users</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registered Users</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField HeaderText="#" DataField="Index" />
                    <asp:BoundField HeaderText="First Name" DataField="FirstName" />
                    <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:BoundField HeaderText="Gender" DataField="Gender" />
                    <asp:BoundField HeaderText="Role" DataField="Role" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
