<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WEBENG_PROJECT.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mt-xl-auto mb-lg-0">
                        <div class="pr-lg-5">
                            

                            <img src="Helper/img/illustration.svg" alt="" class="img-fluid" />

                        </div>

                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1>
                        <h2 class="mb-4">Welcome Back!</h2>

                        <div class="form-group mb-4">
                            <asp:TextBox required="true" runat="server" ID="Uname" CssClass="form-control border-0 shadow form-control-lg text-base text-base" placeholder="Email"></asp:TextBox>

                        </div>
                        <div class="form-group mb-4">
                            <asp:TextBox required="true" ID="Pass" TextMode="Password" runat="server" CssClass="form-control border-0 shadow form-control-lg text-base text-base" placeholder="Password"></asp:TextBox>

                        </div>
                        <div class="form-group mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:CheckBox Text="&nbsp&nbspRemember Me" runat="server"/>

                                <br />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                            </div>

                        </div>
                    <asp:Button ID="btnlog" Text="Login" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="btnlog_Click" />
                        
                        
                        <br />
                        <br />
                    <asp:Button ID="signup" Text="Sign up" PostBackUrl="~/Registration.aspx" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" UseSubmitBehavior="False" />
                        
                        
                    </div>
                </div>

            </div>


        </div>
    </form>
</body>
</html>
