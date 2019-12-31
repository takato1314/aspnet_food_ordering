<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            Register
        </h1>
        <table>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:DropDownList ID="ddlPhone" runat="server">
                        <asp:ListItem Value="60">+60</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    <asp:Button ID="SendOTP" runat="server" Text="Send OTP" OnClick="SendOTP_Click" />
                </td>
            </tr>
            <tr>
                <td>OTP Code</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                    <asp:CustomValidator ID="otpCheck" runat="server" ControlToValidate="TextBox2" ErrorMessage="The OTP code is wrong" ForeColor="Red" OnServerValidate="otpCheck_ServerValidate"></asp:CustomValidator>
                 </td>   
            </tr>

        </table>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
