<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodDelete.aspx.cs" Inherits="WebApplication1.FoodDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Food Delete</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FoodSelect.aspx">Select</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FoodInsert.aspx">Insert</asp:HyperLink>
        <br />
        <br />
        Delete the following record?
        <br />
        <br />
        <table>
            <tr>
                <td>
                    Food
                    ID:
                </td>
                <td>
                    <asp:Label ID="lblId" runat="server" Text="lblId"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Food
                    Name:
                </td>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="lblName"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Food Price
                </td>
                <td>
                    <asp:Label ID="lblPrice" runat="server" Text="lblPrice"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Food Type</td>
                <td>
                    <asp:Label ID="lblType" runat="server" Text="lblType"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnDelete" runat="server"  Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button ID="btnCancel" runat="server"  Text="Cancel" OnClick="btnCancel_Click" />
    </form>
</body>
</html>
