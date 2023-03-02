<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="icble.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderdashboard" runat="server">
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
           <%-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Generate Report</a>--%>
        </div>

        <!-- Content Row -->
        <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">

                                <div class="dash-text">
                                    <h1 style="font-size:18px; font-weight:600; color:#ff6a00;">Exibitors</h1>
                                  <asp:Label ID="lblTotalCount" Style="font-size:22px; font-weight:600; color:#ff6a00;  margin-top:15px;" runat="server"></asp:Label>
                                </div>
                                <div>
                                     <br />
                   <asp:LinkButton ID="Label1" Style=" font:bold 16px/18px; padding:10px; background:#f5f5f5;  margin-top:15px; color: black;" runat="server" OnClick="Label1_Click"> More click</asp:LinkButton>
                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                 <div class="dash-text">
                                    <h1 style="font-size:18px; font-weight:600; color:#ff6a00;">Speaker</h1>
                                    <h2 style="font-size:22px; font-weight:600; color:#ff6a00;  margin-top:15px;">122</h2>
                                </div>
                                <div>
                                     <br />
                    <asp:LinkButton ID="LinkButton1" Style=" font:bold 16px/18px; padding:10px; background:#f5f5f5;  margin-top:15px; color: black;" runat="server" OnClick="Label2_Click"> More click</asp:LinkButton>
                </div>
                            </div>

                        </div>

                    </div>
             
                </div>
                
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-info shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                  <div class="dash-text">
                                    <h1 style="font-size:18px; font-weight:600; color:#ff6a00;">Invitee</h1>
                                    <h2 style="font-size:22px; font-weight:600; color:#ff6a00;  margin-top:15px;">122</h2>
                                </div>
                                <div>
                                     <br />
                    <asp:LinkButton ID="LinkButton2" Style=" font:bold 16px/18px; padding:10px; background:#f5f5f5;  margin-top:15px; color: black;" runat="server" OnClick="Label3_Click"> More click</asp:LinkButton>
                </div>

                                
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">

                                  <div class="dash-text">
                                    <h1 style="font-size:18px; font-weight:600; color:#ff6a00;">Delegates</h1>
                                      <asp:Label ID="lblTotal" Style="font-size:22px; font-weight:600; color:#ff6a00; margin-top:15px;" runat="server"></asp:Label>
                                    
                                </div>
                                <div>
                                    <br />
                   <asp:LinkButton ID="LinkButton3" Style=" font:bold 16px/18px; padding:10px; background:#f5f5f5;  margin-top:15px; color: black;" runat="server" OnClick="Label4_Click"> More click</asp:LinkButton>
                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- /.container-fluid -->

    </div>

</asp:Content>
