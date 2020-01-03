<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mcd.Client.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <div class="temporary"></div>
    </header>

    <section class="bg-light">
        <div class="row">
            <div class="col-sm-8 image-login100">
                <img src="images/login.jpg" alt="McDonald's Login Page"/>
            </div>

            <div class="col-sm-4">
                <div class="container-login100">
                    <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">

                        <div class="login100-form validate-form flex-sb flex-w">
                            <div class="login100-login flex-sb flex-w">
                                <span class="login100-form-title p-b-53">
                                    <i class="fa fa-sign-in"></i> Sign In With
                                </span>

                                <div class="row m-b-20 flex-c-m">
                                    <a href="#" class="btn-face row m-b-20 col-sm-5" aria-label="Facebook Login">
                                        <i class="fa fa-facebook-official"></i>
                                        Facebook
                                    </a>
                                    <span class="col-sm-2"></span>
                                    <a href="#" class="btn-instagram row m-b-20 col-sm-5" aria-label="Google Login">
                                        <i class="fa fa-instagram"></i>
                                        Instagram
                                    </a>
                                </div>

                                <div class="p-t-31 p-b-9">
                                    <span class="txt1">
                                        Username
                                    </span>
                                </div>
                                <div class="wrap-input100 validate-input" data-validate="Username is required">
                                    <input class="input100" type="text" name="username">
                                    <span class="focus-input100"></span>
                                </div>

                                <div class="p-t-13 p-b-9">
                                    <span class="txt1">
                                        Password
                                    </span>

                                    <a href="#" class="txt2 bo1 m-l-5">
                                        Forgot?
                                    </a>
                                </div>
                                <div class="wrap-input100 validate-input" data-validate="Password is required">
                                    <input class="input100" type="password" name="pass">
                                    <span class="focus-input100"></span>
                                </div>

                                <div class="container-login100-form-btn m-t-17">
                                    <button class="login100-form-btn">
                                        Sign In
                                    </button>
                                </div>

                                <div class="w-full text-center p-t-55">
                                    <span class="txt2">
                                        Not a member?
                                    </span>

                                    <span id="login100-goto-register" class="link txt2 bo1">
                                        Sign up now
                                    </span>
                                </div>
                            </div>

                            <div class="login100-registration flex-sb flex-w">
                                <span class="login100-form-title p-b-53">
                                    <i class="fa fa-users"></i> Registration
                                </span>

                                <div class="wrap-input100 validate-input m-t-13 m-b-9" data-validate="Username is required">
                                    <input class="input100" type="text" name="username" placeholder="Username">
                                    <span class="focus-input100"></span>
                                </div>
                                
                                <div class="wrap-input100 validate-input m-t-13 m-b-9" data-validate="Email is required">
                                    <input class="input100" type="text" name="email" placeholder="Email">
                                    <span class="focus-input100"></span>
                                </div>
                                
                                <div class="wrap-input100 validate-input m-t-13 m-b-9" data-validate="Mobile is required">
                                    <input class="input100" type="text" name="mobile" placeholder="Mobile">
                                    <span class="focus-input100"></span>
                                </div>

                                <div class="wrap-input100 validate-input m-t-13 m-b-9" data-validate="Password is required">
                                    <input class="input100" type="password" name="pass" placeholder="Password">
                                    <span class="focus-input100"></span>
                                </div>
                                
                                <div class="wrap-input100 validate-input m-t-13 m-b-9" data-validate="Password is required">
                                    <input class="input100" type="password" name="confirm-pass" placeholder="Confirm Password">
                                    <span class="focus-input100"></span>
                                </div>
                                
                                <div class="validate-input m-t-13 m-b-9" data-validate="Please agree the Terms &amp; Conditions">
                                    <input type="checkbox" name="agreetc"/>
                                    <span class="txt2">I agree to the <a href="#" class="txt2 bo1">Terms &amp; Conditions</a></span>
                                </div>

                                <div class="container-login100-form-btn m-t-17">
                                    <button class="login100-form-btn">
                                        Sign Up
                                    </button>
                                </div>
                                
                                <div class="w-full text-center p-t-55">
                                    <span class="txt2">
                                        Already have an account?
                                    </span>

                                    <span id="login100-goto-login" class="link txt2 bo1">
                                        Login now!
                                    </span>
                                </div>

                            </div>

                        </div>

                    </div>
                </div>
            </div>

            <div id="dropDownSelect1"></div>

            <%--<div class="row">
                <div class="col-md-4 col-md-offset-4">

                    <div class="form">
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel" CssClass="control-label">User Name</asp:Label>
                            <div>
                                <asp:TextBox runat="server" ID="UserName" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required."
                                                            ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired">
                                    *
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password</asp:Label>
                            <div>
                                <asp:TextBox runat="server" TextMode="Password" ID="Password" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required."
                                                            ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">
                                    *
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label"></label>
                            <div class="checkbox-inline">
                                <asp:CheckBox runat="server" Text="Remember me next time." ID="RememberMe"></asp:CheckBox>
                            </div>
                        </div>
                        <div class="form-group text-danger">
                            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                        </div>
                    </div>

                    <div class="text-right">
                        <asp:Button runat="server" Text="Sign In" ValidationGroup="Login1"
                                    ID="LoginButton" Class="btn btn-primary" UseSubmitBehavior="true"
                                    OnClick="LoginButton_OnClick">
                        </asp:Button>
                    </div>
                </div>
            </div>--%>
        </div>
    </section>
</asp:Content>