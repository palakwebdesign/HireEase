<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script type = "text/javascript">
        var time = 120; //-- Timer of 120 seconds i.e. 2 minutes
        window.onload = function () {
            setInterval(function () {
                var timer = document.getElementById("<%=lblTimer.ClientID %>");
                time--;
                timer.innerHTML = time;
                if (time == 0) {
                    document.getElementById("<%=Submit.ClientID %>").click();
                }
            }, 1000)
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 317px;
            margin-right: 492px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<span class="btn btn-primary pill  px-4 py-2">Timer:</span>  <asp:Label ID="lblTimer" class="btn btn-primary pill  px-4 py-2" runat="server" Text="60" ForeColor = "Red"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Height="1526px" Width="708px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
        <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("q_id") %>' Visible="false"></asp:Label>
                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("Ques") %>'></asp:Label>
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("op_1") %>' ID="op_1" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("op_2") %>' ID="op_2" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("op_3") %>' ID="op_3" runat="server" />
                    <br />
                    <asp:RadioButton GroupName="a" Text='<%# Eval("op_4") %>' ID="op_4" runat="server" />
                    <hr />
                    <asp:Label ID="cor_ans" runat="server" Text='<%# Eval("cor_ans") %>' Visible="false"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <asp:Button ID="Submit" class="btn btn-primary pill  px-4 py-2" runat="server" Text="Submit" OnClick="Submit_Click" />

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </asp:Content>

