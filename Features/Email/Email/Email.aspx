<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Email</h1>
        <p>
            To:
            <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
        </p>
        <p>
            Subject:
            <asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
        </p>
        <p>
            Content:
            <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="sendButton" runat="server" OnClick="Button1_Click" Text="Send" />
        </p>
    </form>
</body>
</html>
