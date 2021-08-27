<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="ReportAnalysis.aspx.cs" Inherits="ReportAnalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0">Report</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>

    <br />
    <br />
    <br />
    <br />
    <div class="container">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="job_title" DataValueField="p_id" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [p_id], [job_title] FROM [Post_jobs] WHERE ([co_id] = @co_id)">
            <SelectParameters>
                <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Pass">Pass</asp:ListItem>
            <asp:ListItem>Fail</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                    <asp:BoundField DataField="ispassed" HeaderText="ispassed" SortExpression="ispassed" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT C.Name, C.email, C.contact, A.ispassed FROM candidate_details AS C INNER JOIN Application AS A ON C.c_id = A.c_id WHERE (A.p_id = @p_id) AND (A.ispassed = @ispassed)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="p_id" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="RadioButtonList1" Name="ispassed" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Button ID="btnExport" runat="server" Text="Export To PDF and Send email" OnClick="ExportToPDF" />
</asp:Content>

