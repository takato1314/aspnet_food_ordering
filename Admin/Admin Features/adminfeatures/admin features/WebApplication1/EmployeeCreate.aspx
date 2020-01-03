<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCreate.aspx.cs" Inherits="WebApplication1.EmployeeCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> <h1>Employee Create</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeCreate.aspx">Create</asp:HyperLink> 
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/EmployeeRead.aspx">Read</asp:HyperLink>
        <br />
        <table>
            <tr>
                <td>
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
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter[Name]"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Contact Number:
                </td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="Please Enter [Contact Number]"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rblGender" ErrorMessage="Please select [Gender]"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
        <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
    </form>
</body>
</html>
