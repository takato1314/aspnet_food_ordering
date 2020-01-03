<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQDelete.aspx.cs" Inherits="FAQ.FAQDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Do you want to delete this question and answer?</h2>
            <table>
                <tr>
                    <td>Question: </td>
                    <td><asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label></td>
                </tr>

                <tr>
                    <td>Answer: </td>
                    <td><asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
            <p><asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </p>
        </div>
    </form>
</body>
</html>
