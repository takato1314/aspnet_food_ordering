<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQAdmin.aspx.cs" Inherits="FAQ.FAQAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>FAQ Page<asp:LinqDataSource ID="dsFAQ" runat="server" ContextTypeName="FAQ.dbDataContext" EntityTypeName="" Select="new (Question, Answer, Id)" TableName="FAQs">
                </asp:LinqDataSource>
            </h1>
            <a href="FAQInsert.aspx">Insert</a>
            <br /><br />
            <asp:GridView ID="gvFAQ" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="dsFAQ" Height="216px" Width="589px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Question" HeaderText="Question" ReadOnly="True" SortExpression="Question" />
                    <asp:BoundField DataField="Answer" HeaderText="Answer" ReadOnly="True" SortExpression="Answer" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="FAQUpdate.aspx?Id={0}" Text="Update" />
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="FAQDelete.aspx?Id={0}" Text="Delete" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
