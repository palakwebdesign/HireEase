<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="selectcustomization.aspx.cs" Inherits="selectcustomization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .auto-style1 {
             margin-left: 317px;
             margin-right: 93px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center">
            <h2 class="h3 mb-0">Select Your Question Style</h2>
            <br />
            <div class="align-content-center">
                <asp:DropDownList class="btn btn-primary pill  px-4 py-2" ID="PostJobDD1" runat="server" DataSourceID="SqlDataSource2" DataTextField="job_title" DataValueField="p_id" AutoPostBack="True" OnSelectedIndexChanged="PostJobDD1_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [p_id], [job_title] FROM [Post_jobs] WHERE ([co_id] = @co_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                
              <span class="site-menu js-clone-nav d-none d-lg-block">
                <asp:RadioButtonList ID="Rbt_Ques" runat="server" align="centre" Height="32px" RepeatDirection="Horizontal" Width="1026px" class="custom-radio" >
              <asp:ListItem class="btn btn-primary pill  px-4 py-2" Value="P1" >Pre Define </asp:ListItem>
                    <asp:ListItem class="btn btn-primary pill  px-4 py-2" Value="C1" >Customized </asp:ListItem>
                </asp:RadioButtonList>
                  </span>
                <asp:Button ID="AddQuestions" class="btn btn-primary pill  px-4 py-2" Visible="true" runat="server" Text="Add Questions" OnClick="AddQuestions_Click" />
            </div>
        </div>
    </div>
    <asp:GridView ID="GridView1" class="container" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="q_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Visible="False" CssClass="auto-style1" Height="427px" PageSize="6" Width="980px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="q_id" HeaderText="Question id" SortExpression="q_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Ques" HeaderText="Question" SortExpression="Ques" />
            <asp:BoundField DataField="op_1" HeaderText="option 1" SortExpression="op_1" />
            <asp:BoundField DataField="op_2" HeaderText="option 2" SortExpression="op_2" />
            <asp:BoundField DataField="op_3" HeaderText="option 3" SortExpression="op_3" />
            <asp:BoundField DataField="op_4" HeaderText="option 4" SortExpression="op_4" />
            <asp:BoundField DataField="cor_ans" HeaderText="correct answer" SortExpression="cor_ans" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Questions] WHERE [q_id] = @q_id" InsertCommand="INSERT INTO [Questions] ([co_id], [Ques], [op_1], [op_2], [op_3], [op_4], [cor_ans], [S_id]) VALUES (@co_id, @Ques, @op_1, @op_2, @op_3, @op_4, @cor_ans, @S_id)" SelectCommand="DisplayQuestions" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Questions] SET  [Ques] = @Ques, [op_1] = @op_1, [op_2] = @op_2, [op_3] = @op_3, [op_4] = @op_4, [cor_ans] = @cor_ans WHERE [q_id] = @q_id">
        <DeleteParameters>
            <asp:Parameter Name="q_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="co_id" />
            <asp:Parameter Name="Ques" />
            <asp:Parameter Name="op_1" />
            <asp:Parameter Name="op_2" />
            <asp:Parameter Name="op_3" />
            <asp:Parameter Name="op_4" />
            <asp:Parameter Name="cor_ans" />
            <asp:Parameter Name="S_id" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
            <asp:ControlParameter ControlID="PostJobDD1" Name="p_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ques" Type="String" />
            <asp:Parameter Name="op_1" Type="String" />
            <asp:Parameter Name="op_2" Type="String" />
            <asp:Parameter Name="op_3" Type="String" />
            <asp:Parameter Name="op_4" Type="String" />
            <asp:Parameter Name="cor_ans" Type="String" />
            <asp:Parameter Name="q_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

