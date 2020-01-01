<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="recaptcha.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet1.css" rel="stylesheet" />
        
    <style type="text/css">
        .auto-style1 {
            width: 153px;
            padding-right:200px;
        }
        .auto-style3 {
            width: 153px;
            height: 30px;
        }
        .auto-style4 {
            width: 141px;
            padding-left:200px;
        }
        .auto-style5 {
            width: 667px;
            height: 341px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style7 {
            width: 141px;
            padding-left: 200px;
            height: 49px;
        }
        .auto-style8 {
            width: 153px;
            height: 49px;
        }
    </style>
        
</head>
<body>
   <div class="limiter">
		<div class="container-register">
			<div class="wrap-register">
				<div class="register-form-title" style="background-image: url('Image/bg-01.jpg'); height: 177px;">
					<span class="register-form-title-1">&nbsp;<div class="title"><asp:Label ID="lblTitle" runat="server" ForeColor="White" Text="Register Form"></asp:Label></div>
					</span>
				</div>
    <form id="form" runat="server">
         
        
        <table class="auto-style5">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="371px" />
            <tr>
                <td class="auto-style4">Username: </td>
                <td class="auto-style3"><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Please enter Username" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="This Username has been used" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style7">Password: </td>
                <td class="auto-style8"><asp:TextBox ID="txtPsw" runat="server" MaxLength="12" TextMode="Password" CssClass="auto-style6"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPsw" Display="Dynamic" ErrorMessage="Please enter Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtPsw" Display="Dynamic" ErrorMessage="The password must between 6-12 characters" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style4">Confirm Password: </td>
                <td class="auto-style1"><asp:TextBox ID="txtConfirmPsw" runat="server" TextMode="Password" MaxLength="12"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPsw" Display="Dynamic" ErrorMessage="Please enter Confirm Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPsw" ControlToValidate="txtConfirmPsw" Display="Dynamic" ErrorMessage="Confirm Password do not match with Password" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style4">Gender: </td>
                <td class="auto-style1">
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rblGender" Display="Dynamic" ErrorMessage="Please enter Contact Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                    
                </td>
            </tr>

            <tr>
                <td class="auto-style4">Contact Number: </td>
                <td class="auto-style1"><asp:TextBox ID="txtContactNumber" runat="server" MaxLength="11"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactNumber" Display="Dynamic" ErrorMessage="Please enter Contact Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContactNumber" Display="Dynamic" ErrorMessage="Invalid phone number format. eg. 0199999999" ForeColor="Red" ValidationExpression="[0][1][0-9]{8,9}">*</asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtContactNumber" Display="Dynamic" ErrorMessage="Contact Number Already Exists" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style4">Email: </td>
                <td class="auto-style1"><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please enter Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email Already Exists" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate">*</asp:CustomValidator>
                </td>
            </tr>
        </table>
                
        <div id="ReCaptchaContainer"></div>
        <asp:Label ID="reCaptchaValidation" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <div class="btnContainer">
             <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />&nbsp;
             <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="False" OnClick="btnReset_Click" />
        </div>
       
    </form>

    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
        var your_site_key = '6Lf9acoUAAAAAJyvmuqZq86ZgDA0hHkiE3lyyz-E';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchaContainer', {
                'sitekey': '6Lf9acoUAAAAAJyvmuqZq86ZgDA0hHkiE3lyyz-E',
                'callback': reCaptchaCallback,
                theme: 'light', 
                type: 'image',
                size: 'normal'
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
       </script>
    </div>
            </div>
             </div>
</body>
</html>
