<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQUpdate.aspx.cs" Inherits="FAQ.FAQUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Update</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <table>
                <tr>
                    <td>Question: </td>
                    <td>
                        <asp:TextBox ID="txtQuestion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuestion" Display="Dynamic" ErrorMessage="Please enter question" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr><td>Answer: </td>
                    <td>
                        <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnswer" Display="Dynamic" ErrorMessage="Please enter answer" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <p>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>

            </p>
        </div>
    </form>
</body>
</html>
