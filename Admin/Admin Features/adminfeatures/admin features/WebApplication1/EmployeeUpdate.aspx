<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeUpdate.aspx.cs" Inherits="WebApplication1.EmployeeUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> <h1>Employee Update</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeCreate.aspx">Create</asp:HyperLink> 
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/EmployeeRead.aspx">Read</asp:HyperLink>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    ID:
                </td>
                <td>
                    <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
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
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnCreate_Click" Text="Update" />
        <asp:Button ID="btnCancel" runat="server" OnClick="btnReset_Click" Text="Cancel" />
    </form>
</body>
</html>
