<%@ Page Title="Log in" Language="C#" MasterPageFile="~/MasterSabji.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcommGroceryStore.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="col-lg-12 col-md-12">
        <div class="col-1-wrapper">
            <div class="account-login">
                <div class="page-title">
                    <h1>Login or Create an Account</h1>
                </div>
                <div class="col2-set">
                    <div class="col-1 new-users">
                        <div class="content">
                            <h2>New Customers</h2>
                            <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                        </div>
                    </div>
                    <div class="col-2 registered-users">
                        <div class="content">
                            <h2>Registered Customers</h2>
                            <p>If you have an account with us, please log in.</p>
                            <ul class="form-list">
                                <li>
                                    <label for="email" class="required"><em>*</em>Email Address</label>
                                    <div class="input-box">
                                        <input type="text" name="login[username]" value="" id="email" class="input-text required-entry validate-email" title="Email Address" />
                                    </div>
                                </li>
                                <li>
                                    <label for="pass" class="required"><em>*</em>Password</label>
                                    <div class="input-box">
                                        <input type="password" name="login[password]" class="input-text required-entry validate-password" id="pass" title="Password" />
                                    </div>
                                </li>
                            </ul>
                            <div id="window-overlay" class="window-overlay" style="display: none;"></div>
                            <div id="remember-me-popup" class="remember-me-popup" style="display: none;">
                                <div class="remember-me-popup-head">
                                    <h3>What's this?</h3>
                                    <a href="#" class="remember-me-popup-close" title="Close">Close</a>
                                </div>
                                <div class="remember-me-popup-body">
                                    <p>Checking &quot;Remember Me&quot; will let you access your shopping cart on this computer when you are logged out</p>
                                    <div class="remember-me-popup-close-button a-right">
                                        <a href="#" class="remember-me-popup-close button" title="Close"><span>Close</span></a>
                                    </div>
                                </div>
                            </div>
                            <p class="required">* Required Fields</p>
                        </div>
                    </div>
                </div>
                <div class="col2-set">
                    <div class="col-1 new-users">
                        <div class="buttons-set">
                            <button type="button" title="Create an Account" class="button" onclick="window.location='../create/index.html';"><span><span>Create an Account</span></span></button>
                        </div>
                    </div>
                    <div class="col-2 registered-users">
                        <div class="buttons-set">
                            <a href="../forgotpassword/index.html" class="f-left">Forgot Your Password?</a>
                            <button type="submit" class="button" title="Login" name="send" id="send2"><span><span>Login</span></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Use a local account to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>                
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
    </div>--%>
</asp:Content>
