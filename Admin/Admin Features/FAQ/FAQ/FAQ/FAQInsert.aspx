<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQInsert.aspx.cs" Inherits="FAQ.FAQInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Insert</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <table>
                <tr>
                    <td>Question: </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtQuestion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuestion" Display="Dynamic" ErrorMessage="Please enter question" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td>Answer: </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswer" Display="Dynamic" ErrorMessage="Please enter answer" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <p>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
            </p>
        </div>
    </form>
</body>
</html>
