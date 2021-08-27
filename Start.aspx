<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate.master" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0"> Start Exam</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>
    <table Class="container">
           <tr>
              <p>Once Your are Login a timer will start which show the time period of the test.</p>
               <p>Once the timers exceeds the test will autoatically get submmitted.</p>
              <p>These selected candidate will be informed by the company.</p>
                
                <td ><strong>Ready to Start the Test</strong><span class="style3"> </span>
                </td>
            </tr>

            <tr >
                 <p class="font-weight-bold">When you are ready to begin, select the Start button below.</p>
                </tr>  
    <tr><td> 
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select A.p_id, Co.name, P.job_title From Post_jobs P, company_detail Co ,Application A where A.app_id=@app_id and A.co_id=Co.co_id and A.p_id=P.p_id">
                                                        <SelectParameters>
                                                            <asp:QueryStringParameter Name="app_id" QueryStringField="ApplicationID" />
                                                        </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style3" Height="194px" Width="648px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="p_id" SortExpression="p_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("p_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("p_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Exam.aspx?p_id=" + Eval("p_id") %>' Text="Start"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
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
        </td> </tr>                               
            <tr>
                <td align="right">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Content>

