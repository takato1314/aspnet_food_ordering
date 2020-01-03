<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodInsert.aspx.cs" Inherits="WebApplication1.FoodInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Food Insert</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FoodSelect.aspx">Select</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FoodInsert.aspx">Insert</asp:HyperLink>
        <br />
        <table>
            <tr>
                <td>
                    Food
                    ID:
                </td>
                <td>
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtId" ErrorMessage="Pleases Enter [ID]"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtId" Display="Dynamic" ErrorMessage="[Id] is exist" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
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
                    Food Price </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Please Enter [Price]"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Food Type</td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server">
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
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert"  />
        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
    </form>
</body>
</html>
