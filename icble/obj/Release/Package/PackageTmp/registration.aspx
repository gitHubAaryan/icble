<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="icble.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentinner" runat="server">
    <div class=" container">
        <div class="row">
            <div class="cms-section wow fadeInUp" data-wow-delay="0.6s">
                <div class="cms-area p-5">
                   
                        <div class="row mt-4">
                            
                                    <div class=" col-sm-4">
                                        <div class=" w-100 bg-white text-center p-3"> <a class="regBtn" href="Registration-Form.aspx?User_Type=ft">Faculty</a></div>
                                        
                                        
                                    </div>
                                    <div class=" col-sm-4">
                                        <div class=" w-100 bg-white text-center p-3"> <a class="regBtn" href="Registration-Form.aspx?User_Type=stu">Student</a></div>
                                    </div>
                                   <div class=" col-sm-4">
                                     <div class=" w-100 bg-white text-center p-3">  <a class="regBtn" href="Registration-Form.aspx?User_Type=others">Others</a></div>
                                   </div>
                                
                      

                        </div>
                    
                </div>



            </div>
        </div>
    </div>
</asp:Content>
