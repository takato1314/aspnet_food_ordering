<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="FAQ.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/faq.css" rel="stylesheet" />
    
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Frequently Asked Question(FAQ)<asp:LinqDataSource ID="dsFAQ" runat="server" ContextTypeName="FAQ.dbDataContext" EntityTypeName="" TableName="FAQs" Select="new (Id, Question, Answer)">
                </asp:LinqDataSource>
                </h1>
                
            <ol>
                <asp:Repeater ID="rpFAQ" runat="server" DataSourceID="dsFAQ">
                    <ItemTemplate>
                
                <li>
                    <div class="Question"><%# Eval("Question") %></div>
                    <div class="Answer"><%# Eval("Answer") %></div>
                </li>
                        </ItemTemplate>
               </asp:Repeater>
            </ol>
        </div>
    </form>
</body>
</html>
