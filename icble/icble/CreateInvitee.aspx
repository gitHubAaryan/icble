<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CreateInvitee.aspx.cs" Inherits="icble.CreateInvitee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-0Y9JDY9M8S"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-0Y9JDY9M8S');
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderdashboard" runat="server">
 
    <div class="container justify-content-md-center">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                     <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Invitee!</h1>
                            </div>
                    <div class="col-md-12">
                        <center>
                            <h4>Registration Form (ICBLE - 2023)</h4>
                        </center>

                        <hr />
                        
                        <h4> <asp:Label ID="lbmg" Style="color: black; font-size:16px;" runat="server"></asp:Label></h4>
                        <h4> <asp:Label ID="lblmsg" Visible="false" Style="color: red; font-size:16px;" runat="server"></asp:Label></h4>
                    </div>
                    <div class="col-md-2 py-2">
                        <label for="txt_email" class="form-label">Email ID</label>
                    </div>
                    <div class="col-md-12 py-2">
                        <asp:TextBox ID="txt_email" AutoPostBack="true" OnTextChanged="txt_email_TextChanged1" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_email" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="rev_email" runat="server" ErrorMessage="Please enter valid email Id" ValidationGroup="vgRegister" ControlToValidate="txt_email" CssClass="ValidatorClass"
                            Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:Label ID="lblStatus" Visible="false" Style="color: red" runat="server"></asp:Label>

                    </div>

                    <div class="col-md-2 py-2">

                        <label for="txt_title" class="form-label">Title</label>
                    </div>

                    <div class="col-md-12">
                        <div class="">
                            <asp:DropDownList ID="ddl_title" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">--Please Select--</asp:ListItem>
                                <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                                <asp:ListItem Value="Ms.">Ms.</asp:ListItem>
                                <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
                                <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                                <asp:ListItem Value="Prof.">Prof.</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfv_title" runat="server" ErrorMessage="Please Enter" ForeColor="Red" InitialValue="-1" CssClass="ValidatorClass" ControlToValidate="ddl_title" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />

                        </div>
                    </div>
                            <div class=" form-group">
                         <div class="col-md-2 py-2 ">
                        <label for="txt_name" class="form-label">First Name</label>
                    </div>
                    <div class="col-md-12 py-2">
                        <asp:TextBox ID="txt_name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_name" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    </div>
                                </div>
                            <div class=" form-group">
                            <div class="col-md-2 py-2">
                        <label for="txt_name" class="form-label">Middle Name</label>
                    </div>
                    <div class="col-md-12 py-2">
                        <asp:TextBox ID="txt_middle" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                    </div>
                                </div>
                            <div class=" form-group">
                    <div class="col-md-12 py-2">
                        <label for="txt_name" class="form-label">Last Name</label>
                    </div>
                    <div class="col-md-12 py-2">
                        <asp:TextBox ID="txt_last" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter" ForeColor="Red" CssClass="ValidatorClass" ControlToValidate="txt_last" ValidationGroup="vgRegister" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    </div>
                    </div>
                    
                    <div class="col-md-12 pt-1 text-center">
                        <asp:Button ID="btn_save" runat="server" CssClass="btn btn-success" Style="font-weight: bold;" Text="Register" ValidationGroup="vgRegister" OnClick="btn_save_Click" />
                        <asp:Button ID="btn_clear" runat="server" CssClass="btn btn-danger" Style="font-weight: bold;" type="reset" Text="Reset" OnClick="btn_clear_Click" />
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>

    </div>

   

</asp:Content>
