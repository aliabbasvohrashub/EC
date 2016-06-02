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
                                    <label for="username" class="required"><em>*</em>User Name</label>
                                    <div class="input-box">
                                        <input type="text" name="username" value="" id="txtUserName" runat="server" class="input-text" title="User Name" />
                                        <br />
                                        <asp:RequiredFieldValidator ValidationGroup="login" ErrorMessage="User name can not be blank." Font-Size="Smaller" Font-Bold="true" ForeColor="Red" Display="Dynamic" ControlToValidate="txtUserName" runat="server" />
                                    </div>
                                </li>
                                <li>
                                    <label for="pass" class="required"><em>*</em>Password</label>
                                    <div class="input-box">
                                        <input type="password" name="password" runat="server" class="input-text" id="txtPassword" title="Password" />
                                        <br />
                                        <asp:RequiredFieldValidator ValidationGroup="login" ErrorMessage="Password can not be blank." Font-Size="Smaller" Font-Bold="true" ForeColor="Red" Display="Dynamic" ControlToValidate="txtPassword" runat="server" />
                                    </div>
                                </li>
                            </ul>
                            <p class="required">* Required Fields</p>
                        </div>
                    </div>
                </div>
                <div class="col2-set">
                    <div class="col-1 new-users">
                        <div class="buttons-set">
                            <button type="button" title="Create an Account" class="button" onclick="window.location='Register.aspx';"><span><span>Create an Account</span></span></button>
                        </div>
                    </div>
                    <div class="col-2 registered-users">
                        <div class="buttons-set">
                            <a href="Forgot.aspx" class="f-left">Forgot Your Password?</a>
                            <button type="button" class="button" validationgroup="login" title="Login" name="LogIn" runat="server" onserverclick="LogIn_ServerClick" id="LogIn"><span><span>Login</span></span></button>
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
