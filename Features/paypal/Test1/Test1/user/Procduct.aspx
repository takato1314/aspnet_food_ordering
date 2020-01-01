    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Procduct.aspx.cs" Inherits="Test1.user.Procduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Macfoods - Product</title>
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
        <div>
             <asp:LinqDataSource ID="dsProduct" runat="server" ContextTypeName="Test1.ProductDataContext" EntityTypeName="" TableName="Products"></asp:LinqDataSource>

        <asp:ListView ID="lvProduct" runat="server" DataKeyNames="food_id" DataSourceID="dsProduct" GroupItemCount="2">
                
                    <LayoutTemplate>
                        <div>
                            <asp:PlaceHolder ID="groupPlaceholder" runat="server"></asp:PlaceHolder>
                        </div>
                    </LayoutTemplate>

                    <GroupTemplate>
                        <div>
                            <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </div>
                    </GroupTemplate>

                <ItemTemplate>                
                                <a class="prod" href="ProcductDetail.aspx?Id=<%# Eval("food_id") %>">
                                <img class="pics" src="images/<%# Eval("food_image") %>" />
                                <div class=""><%# Eval("food_name") %></div>
                                
                                </a>
                </ItemTemplate>
        </asp:ListView>

        <asp:DataPager class="datapg" ID="DataPager1" runat="server" PagedControlID="lvProduct" PageSize="6">
            <Fields>
                <asp:NumericPagerField />
            </Fields>
        </asp:DataPager>
        </div>
        
        <br />
        
    </form>
</body>
</html>
