<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRead.aspx.cs" Inherits="WebApplication1.EmployeeRead" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> <h1>Employee Read</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeCreate.aspx">Create</asp:HyperLink> 
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/EmployeeRead.aspx">Read</asp:HyperLink>
        <br />
        <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="employeeId" HeaderText="Employee Id" />
                <asp:BoundField DataField="employeeName" HeaderText="Employee Name" />
                <asp:BoundField DataField="employeeContact" HeaderText="Employee Contact" />
                <asp:BoundField DataField="employeeGender" HeaderText="Employee Gender" />
                <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" DataNavigateUrlFormatString="EmployeeUpdate.aspx?EmployeeId={0}" Text="Update" />
                <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" DataNavigateUrlFormatString="EmployeeDelete.aspx?EmployeeId={0}" Text="Delete" />
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
