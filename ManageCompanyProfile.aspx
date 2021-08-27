<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="ManageCompanyProfile.aspx.cs" Inherits="ManageCompanyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 113px;"></div>
        <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0">Company Profile</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>
    <br /><br /><br />
    <div class="container">
     <asp:DetailsView ID="DetailsView1" runat="server"  Height="456px" Width="569px" AutoGenerateRows="False"  DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style4">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="CEO_name" HeaderText="CEO_name" SortExpression="CEO_name" />
            <asp:BoundField DataField="company_url" HeaderText="company_url" SortExpression="company_url" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
        </div>
    <div class="container">
          <div class="col-md-3 ml-lg-5">
              <span class="site-menu js-clone-nav d-none d-lg-block">
              <asp:Button ID="setProfile" runat="server" Text="Set Profile" class="btn btn-primary pill  px-4 py-2" OnClick="setProfile_Click" /></span>
  </div></div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [address], [contact], [email], [CEO_name], [company_url] FROM [company_detail] WHERE ([co_id] = @co_id)">
        <SelectParameters>
            <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

