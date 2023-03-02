<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="icble.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentinner" runat="server">
     <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <div class="container ">

        <!-- Outer Row -->
        <div class="row justify-content-center ">

            <div class="col-xl-10 col-lg-6 col-md-6">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0" >
                        <!-- Nested Row within Card Body -->
                        <div class="row">

                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome </h1>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox ID="txt_email"  runat="server" class="form-control form-control-user"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_email" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                        <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Please enter valid email Id" ValidationGroup="vgRegister" ControlToValidate="txt_email" CssClass="ValidatorClass"
                                            Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:Label ID="lblStatus" Visible="false" Style="color: red" runat="server"></asp:Label>


                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="txt_password"  TextMode="Password"  runat="server" class="form-control form-control-user"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfv_password" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_password" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                                      
                                        <asp:Label ID="lblPassword" Visible="false" Style="color: red" runat="server"></asp:Label>

                                        
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                        </div>
                                    </div>

                                    <asp:Button ID="btn_save" runat="server" class="btn btn-primary btn-user btn-block" Text="Login" ValidationGroup="vgRegister" OnClick="btn_save_Click" />

                                    <hr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</asp:Content>
