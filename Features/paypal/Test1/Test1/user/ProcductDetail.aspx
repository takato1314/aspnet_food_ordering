<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProcductDetail.aspx.cs" Inherits="Test1.user.ProcductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Macfoods - Product Detail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <a href="#default" class="logo">MacFoods</a>
            <div class="header-right">
                <a href="#signin">Signin</a>
                <a href="#signup">Signup</a>
            </div>
    </div>

    <div class="topnav" id="myTopnav">
      <a href="#home">Home</a>
      <a href="#about">About</a>
      <a class="active" href="Procduct.aspx">Products</a>
      <a href="#contact">Contact</a>
      
      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
      </a>
    </div>

    <script>
    function myFunction() {
      var x = document.getElementById("myTopnav");
      if (x.className === "topnav") {
        x.className += " responsive";
      } else {
        x.className = "topnav";
      }
    }
    </script>
    
    <!--  END of NAV BAR -->

    
        <asp:LinqDataSource ID="dsProduct" runat="server" ContextTypeName="Test1.ProductDataContext" EntityTypeName="" TableName="Products" Where="food_id == @food_id">
            <WhereParameters>
                <asp:QueryStringParameter Name="food_id" QueryStringField="Id" Type="String" />
            </WhereParameters>
        </asp:LinqDataSource>
        
        <asp:DetailsView ID="dvProduct" runat="server" AutoGenerateRows="False" DataKeyNames="food_id" DataSourceID="dsProduct" CssClass="detailsview" Height="121px" Width="182px">
            <FieldHeaderStyle CssClass="header" />
            <Fields>
                <asp:ImageField DataImageUrlField="food_image" DataImageUrlFormatString="images/{0}">
                </asp:ImageField>
                <asp:BoundField DataField="food_id" HeaderText="ID" ReadOnly="True" SortExpression="food_id" />
                <asp:BoundField DataField="food_name" HeaderText="Name" SortExpression="food_name" />
                <asp:BoundField DataField="food_price" DataFormatString="RM {0}" HeaderText="Price" SortExpression="food_price" />
            </Fields>
        </asp:DetailsView>   
        
    </form>

    <!-- Pay now -->
        <div style="height:29px; width:108px; float:left; border-style:inherit; border-width:1px; margin-left: 240px; margin-top: 20px;">
         <form  action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
                    <input type="hidden" name="cmd" value="_xclick">
                    <input type="hidden" name="business" value="test@mackers.gmail.com">
                    <input type="hidden" name="lc" value="MY">
                    <input type="hidden" name="item_name" value="<%#: Eval("food_name") %>" />
                    <input type="hidden" name="amount" value="9.50">
                    <input type="hidden" name="currency_code" value="MYR">
                    <input type="hidden" name="button_subtype" value="services">
                    <input type="hidden" name="no_note" value="0">
                   
                    
                    <input type="hidden" name="bn" value="PP-BuyNowBF:btn_paynow_LG.gif:NonHostedGuest">
                    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                </form>
        </div>
        <div style="height:31px; width:120px; float:left; border-style:inherit; border-width:1px; margin-left: 240px; margin-top: 20px;">
            <form target="paypal" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" style="height: 33px" >
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="business" value="test@mackers.gmail.com">
                <input type="hidden" name="lc" value="US">
                <input type="hidden" name="item_name" value="Rodeo Cheeseburger">
                <input type="hidden" name="amount" value="9.50">
                <input type="hidden" name="currency_code" value="MYR">
                <input type="hidden" name="button_subtype" value="products">
                <input type="hidden" name="no_note" value="0">
                <input type="hidden" name="add" value="1">
                <input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest">
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
        </div>

        <div style="height:31px; width:120px; border-style:inherit; border-width:1px; margin-left: 240px; margin-top: 20px;">
            Click [<a href="Procduct.aspx">HERE</a>] to return to shop
        </div>

    
</body>
</html>
