<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="SelectQuestion.aspx.cs" Inherits="Select_Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="q_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="q_id" HeaderText="q_id" InsertVisible="False" ReadOnly="True" SortExpression="q_id" />
            <asp:BoundField DataField="Ques" HeaderText="Ques" SortExpression="Ques" />
            <asp:BoundField DataField="op_1" HeaderText="op_1" SortExpression="op_1" />
            <asp:BoundField DataField="op_2" HeaderText="op_2" SortExpression="op_2" />
            <asp:BoundField DataField="op_3" HeaderText="op_3" SortExpression="op_3" />
            <asp:BoundField DataField="op_4" HeaderText="op_4" SortExpression="op_4" />
            <asp:BoundField DataField="cor_ans" HeaderText="cor_ans" SortExpression="cor_ans" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q_id], [Ques], [op_1], [op_2], [op_3], [op_4], [cor_ans] FROM [Questions]"></asp:SqlDataSource>
</asp:Content>

