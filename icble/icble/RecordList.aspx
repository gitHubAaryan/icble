<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RecordList.aspx.cs" Inherits="icble.RecordList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <%-- <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvCustomers]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                "responsive": true,
                "sPaginationType": "full_numbers"
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderdashboard" runat="server">
    
       <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" class="table table-striped"
        ClientIDMode="Static" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="CustomerID">
                <ItemTemplate>
                    <asp:Label ID="lblId" Text='<%#Eval("Candidate_ID") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblemail" Text='<%#Eval("Email_ID")%>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="lblName" Text='<%#Eval("name")%>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
                    <asp:Label ID="lblcountry" Text='<%#Eval("Country")%>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="User type">
                <ItemTemplate>
                    <asp:Label ID="lblUser_type" Text='<%#Eval("User_type")%>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
           <asp:TemplateField HeaderText="Generate Barcode">
            <ItemTemplate>
                <asp:HyperLink ID="ViewDetailsLink" runat="server" NavigateUrl='<%# "barcode.aspx?ID=" + Eval("Candidate_ID") %>' Text="Generate" />
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
   
</asp:Content>
