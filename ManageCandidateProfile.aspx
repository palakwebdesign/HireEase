<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate.master" AutoEventWireup="true" CodeFile="ManageCandidateProfile.aspx.cs" Inherits="ManageCandidateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style3 {
            margin-left: 218px;
        }
        </style>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 113px;"></div>
        <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0">Candidate Profile</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>
    <br /><br /><br /><br />
   <div class="container">
       <div class="accordion-item">
<asp:DetailsView ID="DetailsView1" runat="server"  Height="456px" Width="569px" AutoGenerateRows="False"  DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#00CC99" GridLines="None" CssClass="auto-style3">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
    <EditRowStyle BackColor="#999999" />
    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="DOB" HeaderText="Date of Birth" SortExpression="DOB" />
        <asp:BoundField DataField="perc_10" HeaderText="10 percentage " SortExpression="perc_10" />
        <asp:BoundField DataField="perc_12" HeaderText="12 percentage" SortExpression="perc_12" />
        <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
        <asp:BoundField DataField="per_degree" HeaderText="Degree percentage" SortExpression="per_degree" />
        <asp:BoundField DataField="Backlogs" HeaderText="Backlogs" SortExpression="Backlogs" />
        <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
    </Fields>
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
       </div>
       </div>

    <br />
    <div>
        <div class="container">
          <div class="col-md-3 ml-lg-5">
              <span class="site-menu js-clone-nav d-none d-lg-block">
                                                    
     <asp:Button ID="setProfile" runat="server" class="bg-primary text-white py-3 px-4 rounded" Text="Set Profile" OnClick="setProfile_Click" Width="173px"  />
    </div></div></div>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [DOB], [perc_10], [perc_12], [contact], [per_degree], [Backlogs], [gender] FROM [candidate_details] WHERE ([c_id] = @c_id)">
        <SelectParameters>
            <asp:SessionParameter Name="c_id" SessionField="c_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

