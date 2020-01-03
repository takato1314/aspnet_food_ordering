<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodSelect.aspx.cs" Inherits="WebApplication1.FoodSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Food Select</h1>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FoodSelect.aspx">Select</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/FoodInsert.aspx">Insert</asp:HyperLink>
        <br />
        <asp:GridView ID="gvFood" runat="server" AutoGenerateColumns="False" style="margin-right: 0px">
            <Columns>
                <asp:BoundField DataField="foodId" HeaderText="Food Id" />
                <asp:BoundField DataField="foodName" HeaderText="Food Name" />
                <asp:BoundField DataField="foodPrice" HeaderText="Food Price" />
                <asp:BoundField DataField="foodType" HeaderText="Food Type" />
                <asp:HyperLinkField DataNavigateUrlFields="FoodId" DataNavigateUrlFormatString="FoodUpdate.aspx?FoodId={0}" Text="Update" />
                <asp:HyperLinkField DataNavigateUrlFields="FoodId" DataNavigateUrlFormatString="FoodDelete.aspx?FoodId={0}" Text="Delete" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
