<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="PredefineQuestions.aspx.cs" Inherits="PredefineQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 220px;
        }
        .auto-style2 {
            left: -1px;
            top: 0;
            margin-left: 592px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
                <div class="container text-center">
                    <h2 class="mb-0">Select System Question </h2>
                    <p class="mb-0 unit-6"> 
                        <asp:DropDownList class="btn btn-primary pill  px-4 py-2" ID="PostJobDD1" runat="server" DataSourceID="SqlDataSource2" DataTextField="job_title" DataValueField="p_id" AutoPostBack="true" ></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [p_id], [job_title] FROM [Post_jobs] WHERE ([co_id] = @co_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="q_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" CssClass="auto-style1" Height="252px" Width="1071px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkRow" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="q_id" HeaderText="q_id" InsertVisible="False" ReadOnly="True" SortExpression="q_id" />
            <asp:BoundField DataField="Ques" HeaderText="Ques" SortExpression="Ques" />
            <asp:BoundField DataField="op_1" HeaderText="op_1" SortExpression="op_1" />
            <asp:BoundField DataField="op_2" HeaderText="op_2" SortExpression="op_2" />
            <asp:BoundField DataField="op_3" HeaderText="op_3" SortExpression="op_3" />
            <asp:BoundField DataField="op_4" HeaderText="op_4" SortExpression="op_4" />
            <asp:BoundField DataField="cor_ans" HeaderText="cor_ans" SortExpression="cor_ans" />
            <asp:BoundField DataField="S_id" HeaderText="S_id" SortExpression="S_id" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [q_id], [Ques], [op_1], [op_2], [op_3], [op_4], [cor_ans], [S_id] FROM [Questions]"></asp:SqlDataSource>
           <br /> <span class="site-menu js-clone-nav d-none d-lg-block">
    <asp:Button ID="Button1" runat="server" class="btn btn-primary pill  px-4 py-2" Text="Add Questions" OnClick="Button1_Click"  Width="391px"   />
</span>
    </asp:Content>

