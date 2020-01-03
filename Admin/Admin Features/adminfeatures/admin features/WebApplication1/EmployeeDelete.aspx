<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDelete.aspx.cs" Inherits="WebApplication1.EmployeeDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> <h1>Employee Delete</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeCreate.aspx">Create</asp:HyperLink> 
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/EmployeeRead.aspx">Read</asp:HyperLink>
        <br />
        <br />
        Delete the following record?
        <br />
        <br /><table>
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:Label ID="lblId" runat="server" Text="lblId"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="lblName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Contact Number:
                </td>
                <td>
                    <asp:Label ID="lblContact" runat="server" Text="lblContact"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <asp:Label ID="lblGender" runat="server" Text="lblGender"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnDelete" runat="server"  Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button ID="btnCancel" runat="server"  Text="Cancel" OnClick="btnCancel_Click" />
    </form>
</body>
</html>
