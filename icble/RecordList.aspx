<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="RecordList.aspx.cs" Inherits="icble.RecordList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderdashboard" runat="server">

      <div class="box-body" style="overflow: scroll; height: 300px">
        <asp:GridView ID="GridView1" CssClass="table table-bordered dataTable1" runat="server"
            CellPadding="5" CellSpacing="2" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Sl. No.">
                    <ItemTemplate>
                        <%#Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Candidate_ID" HeaderText="Candidate ID" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email" />
                <asp:BoundField DataField="Last_name" HeaderText="Last_name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" />
                <asp:BoundField DataField="Country" HeaderText="Country" />
                
            </Columns>
        </asp:GridView>
    </div>
    
   
</asp:Content>
