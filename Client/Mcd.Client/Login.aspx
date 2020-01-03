﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mcd.Client.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <div class="temporary"></div>
    </header>
    
    <section class="ftco-section services-section bg-light">
        <div class="container">

            <div class="limiter">
                <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                    <div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
                        <form class="login100-form validate-form flex-sb flex-w">
                            <span class="login100-form-title p-b-53">
                                Sign In With
                            </span>

                            <a href="#" class="btn-face m-b-20" aria-label="Facebook Login">
                                <i class="fa fa-facebook-official"></i>
                                Facebook
                            </a>

                            <a href="#" class="btn-instagram m-b-20" aria-label="Google Login">
                                <i class="fa fa-instagram"></i>
                                Instagram
                            </a>

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

                                <a href="#" class="txt2 bo1">
                                    Sign up now
                                </a>
                            </div>
                        </form>
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