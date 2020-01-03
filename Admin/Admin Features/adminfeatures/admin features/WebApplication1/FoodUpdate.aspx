<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodUpdate.aspx.cs" Inherits="WebApplication1.FoodUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Food Update</h1>
        <asp:HyperLink ID="HyperLink1" runat="server">Select</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server">Insert</asp:HyperLink>
        <table>
            <tr>
                <td>
                    Food
                    ID:
                </td>
                <td>
                    <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Food
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter[Food Name]"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Food Price:
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="Please Enter [Price]"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Food Type:
                </td>
                <td> <asp:DropDownList ID="ddlType" runat="server">
                        <asp:ListItem>Burgers</asp:ListItem>
                        <asp:ListItem>Beverages</asp:ListItem>
                        <asp:ListItem>Dessert</asp:ListItem>
                        <asp:ListItem>Miscellaneous</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlType" ErrorMessage="Please select [Food Type]"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnCreate_Click" Text="Update" />
        <asp:Button ID="btnCancel" runat="server" OnClick="btnReset_Click" Text="Cancel" />
    </form>
</body>
</html>
