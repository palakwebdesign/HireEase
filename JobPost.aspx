
<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="JobPost.aspx.cs" Inherits="JobPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            

            <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
                <div class="container text-center">
                    <h2 class="mb-0">Post a Job</h2>
                </div>
            </div>

            <div class="site-section bg-light">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8 mb-5">
                            
                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold">Job Title</label>
                                        <asp:TextBox ID="jobtitle" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group ">
                                    <div >
                                        <label class="font-weight-bold">Aggregate Percentage</label>
                                        <asp:TextBox ID="percentage" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group mb-5">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold">Score Criteria</label>
                                        <asp:TextBox ID="score" class="form-control" runat="server"></asp:TextBox>

                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold">BackLogs</label>
                                    </div>

                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="custom-radio" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="5" Width="510px">
                                            <asp:ListItem Value="0"> Zero</asp:ListItem>
                                             <asp:ListItem Value="1"> One</asp:ListItem>
                                            <asp:ListItem Value="2"> Two</asp:ListItem>
                                            <asp:ListItem Value=" 3"> Three</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold">Job Description</label>
                                    </div>
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <asp:TextBox ID="JobDesc" class="form-control" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <asp:Button ID="post" runat="server" Text="Post a Job" class="btn btn-primary pill  px-4 py-2" OnClick="post_Click" />
                                    </div>
                                </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/mediaelement-and-player.min.js"></script>
        <script src="js/main.js"></script>
                </div>
                        <div class="container">
       <div class="accordion-item">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="p_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1083px" Height="337px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" ReadOnly="True" SortExpression="p_id" />
                        <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                        <asp:BoundField DataField="job_desc" HeaderText="job_desc" SortExpression="job_desc" />
                        <asp:BoundField DataField="percentage" HeaderText="percentage" SortExpression="percentage" />
                        <asp:BoundField DataField="backlogs" HeaderText="backlogs" SortExpression="backlogs" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" BorderColor="Black" BorderStyle="Dotted" Font-Bold="True" Font-Italic="True" Font-Overline="True" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" Font-Italic="False" />
                    <SelectedRowStyle BackColor="#FFFFCC" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Post_jobs] WHERE [p_id] = @p_id" InsertCommand="INSERT INTO [Post_jobs] ([job_title], [Score], [job_desc], [percentage], [backlogs]) VALUES (@job_title, @Score, @job_desc, @percentage, @backlogs)" SelectCommand="SELECT [p_id], [job_title], [Score], [job_desc], [percentage], [backlogs] FROM [Post_jobs] WHERE ([co_id] = @co_id)" UpdateCommand="UPDATE [Post_jobs] SET [job_title] = @job_title, [Score] = @Score, [job_desc] = @job_desc, [percentage] = @percentage, [backlogs] = @backlogs WHERE [p_id] = @p_id">
                    <DeleteParameters>
                        <asp:Parameter Name="p_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="job_title" Type="String" />
                        <asp:Parameter Name="Score" Type="Int32" />
                        <asp:Parameter Name="job_desc" Type="String" />
                        <asp:Parameter Name="percentage" Type="Decimal" />
                        <asp:Parameter Name="backlogs" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="job_title" Type="String" />
                        <asp:Parameter Name="Score" Type="Int32" />
                        <asp:Parameter Name="job_desc" Type="String" />
                        <asp:Parameter Name="percentage" Type="Decimal" />
                        <asp:Parameter Name="backlogs" Type="Int32" />
                        <asp:Parameter Name="p_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

</asp:Content>