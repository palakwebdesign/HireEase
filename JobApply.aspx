<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate.master" AutoEventWireup="true" CodeFile="JobApply.aspx.cs" Inherits="JobApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 372px;
            margin-right: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0">Apply for Job</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>

    <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="site-menu js-clone-nav d-none d-lg-block">
                                                    <span class="bg-primary text-white py-3 px-4 rounded">
    <span>
          
           <asp:Label class="bg-primary text-white py-3 px-4 rounded" ID="Label1" runat="server" Text="Apply for Jobs"></asp:Label></span>
    </span></span>
    <br />
    <div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" CellPadding="4" ForeColor="#333333" RepeatColumns="1" ShowFooter="False" ShowHeader="False" CssClass="auto-style4" Height="963px" Width="873px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
<ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E3EAEB"></ItemStyle>
        <ItemTemplate>
            Name:
            <asp:Label ID="nameLabel" class="container" runat="server" Text='<%# Eval("name") %>' />      
            <asp:Label ID="p_idLabel" class="container" runat="server" Text='<%# Eval("p_id") %>' Visible="False" />
            <asp:Label ID="co_idLabel" class="container" runat="server" Text='<%# Eval("co_id") %>' Visible="False" />
            <br />
            Job Post:
            <asp:Label ID="job_titleLabel" class="container" runat="server" Text='<%# Eval("job_title") %>' />
            <br />
            Eligibility Criteria:
            <asp:Label ID="ScoreLabel" class="container" runat="server" Text='<%# Eval("Score") %>' />
            <br />
            Job Description:
            <asp:Label ID="job_descLabel" class="container" runat="server" Text='<%# Eval("job_desc") %>' />
            <br />
            Passing Percentage:
            <asp:Label ID="percentageLabel" runat="server" class="container" Text='<%# Eval("percentage") %>' />
            <br />
            Backlogs:
            <asp:Label ID="backlogsLabel" class="container" runat="server" Text='<%# Eval("backlogs") %>' />
            <br />
            <asp:Button ID="Button1" runat="server" class="btn btn-primary pill  px-4 py-2" Text="Apply" CommandArgument='<%# Eval("p_id") %>'  /><br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
        </div>
    <asp:Label ID="check" runat="server" Text=""></asp:Label>
    <br/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Job_Check" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="c_id" SessionField="c_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

