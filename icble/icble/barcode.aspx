<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="barcode.aspx.cs" Inherits="icble.barcode" %>

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
                <div class="row text-center pt-5 pb-5">
                    <div class=" container">
                    <div class=" col-sm-12">
                        <asp:Label ID="lblname" runat="server"></asp:Label>
                    </div>
                        <hr />
                    <div class=" col-sm-12">
                        <asp:Label ID="lblusertype"  runat="server"></asp:Label>

                        <hr />
<asp:PlaceHolder ID="plBarCode" runat="server" />
                    </div>
                    <div class=" col-sm-12 mt-3">
                        <asp:Image ID="imgBarcode" Width="250" runat="server" Visible="false" />
                    </div>
                        </div>
                </div>
            </div>
        </div>

    </div>




    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
<asp:Button ID="btnGenerate" runat="server" Text="Generate" onclick="btnGenerate_Click" />


</asp:Content>
