<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Mcd.Client.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        <div class="temporary"></div>
    </header>

    <section class="bg-light">
        <div class="row">
            <div class="col-sm-8 image-login100">
                <asp:Image runat="server" ImageUrl="~/images/login.jpg" AlternateText="McDonald's Login Page"/>
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
                                    <asp:Label runat="server" AssociatedControlID="LoginUsername" CssClass="txt1">
                                        Username
                                    </asp:Label>
                                </div>
                                <div class="wrap-input100 validate-input" data-validate="Username is required">
                                    <asp:TextBox runat="server" ID="LoginUsername" CssClass="input100" required="true"></asp:TextBox>
                                    <span class="focus-input100"></span>
                                    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="LoginUsername" ValidationGroup="Login1"
                                        CssClass="text-warning" ErrorMessage="Username is required"/>--%>
                                </div>

                                <div class="p-t-13 p-b-9">
                                    <asp:Label runat="server" AssociatedControlID="LoginPassword" CssClass="txt1">
                                        Password
                                    </asp:Label>
                                    <asp:HyperLink runat="server" ID="ForgotPasswordUrl" CssClass="txt2 bo1 m-l-5">
                                        Forgot your password?
                                    </asp:HyperLink>
                                </div>
                                <div class="wrap-input100 validate-input" data-validate="Password is required">
                                    <asp:TextBox runat="server" ID="LoginPassword" TextMode="Password" CssClass="input100" required="true"></asp:TextBox>
                                    <span class="focus-input100"></span>
                                    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="LoginPassword" ValidationGroup="Login1"
                                        CssClass="text-warning" ErrorMessage="Password is required"/>--%>
                                </div>
                                
                                <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="False">
                                    <p class="text-danger">
                                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"/>
                                    </p>
                                </asp:PlaceHolder>

                                <div class="container-login100-form-btn m-t-17">
                                    <asp:Button runat="server" Text="Sign In" OnClick="LoginButton_OnClick" CssClass="login100-form-btn" />
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

        </div>
    </section>
    
    <script src="./../Content/jquery/js/jquery-3.4.1.min.js"></script>
    <script src="./../Content/jquery-ui/jquery-ui.min.js"></script>
    <script src="./../Content/jquery-migrate/jquery-migrate-3.0.1.min.js"></script>
    <script src="./../Content/animsition/js/animsition.min.js"></script>
    <script src="./../Content/popper.js/dist/popper.min.js"></script>
    <script src="./../Content/bootstrap/js/bootstrap.min.js"></script>
    <script src="./../Content/select2/select2.min.js"></script>
    <script src="./../Content/jquery.easing/jquery.easing.1.3.js"></script>
    <script src="./../Content/jquery.waypoints/jquery.waypoints.min.js"></script>
    <script src="./../Content/jquery-stellar/jquery.stellar.min.js"></script>
    <script src="./../Content/owl/js/owl.carousel.min.js"></script>
    <script src="./../Content/jquery-magnific-popup/js/jquery.magnific-popup.min.js"></script>
    <script src="./../Content/aos/js/aos.js"></script>
    <script src="./../Content/jquery.animateNumber/jquery.animateNumber.min.js"></script>
    <script src="./../Content/daterangepicker/moment.min.js"></script>
    <script src="./../Content/daterangepicker/daterangepicker.js"></script>
    <script src="./../Content/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="./../Content/scrollax/js/scrollax.min.js"></script>
    <script src="./../Content/main.js"></script>

</asp:Content>