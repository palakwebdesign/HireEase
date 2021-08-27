<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="AddQuestions.aspx.cs" Inherits="AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
                <div class="container text-center">
                    <h2 class="mb-0">Add Customize Questions</h2>
                    <p class="mb-0 unit-6">
                       
                </div>
            </div>
    
        <table class="container">

            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr class="row form-group">
                
                 
                <td class="font-weight-bold">Select Section:</td>
                <td >
                    <asp:DropDownList ID="Section_Select" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="S_id" Height="55px" Width="308px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Section_table]"></asp:SqlDataSource>
                </td>          
                <td ></td>
            </tr>
            <tr>
                <td class="font-weight-bold">Select Job:</td>
                <td>
                    <asp:DropDownList ID="JobPost" runat="server" CssClass="custom-checkbox" DataSourceID="SqlDataSource2" DataTextField="job_title" DataValueField="p_id" Width="301px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [p_id], [job_title] FROM [Post_jobs] WHERE ([co_id] = @co_id)">
                    <SelectParameters>
                        <asp:SessionParameter Name="co_id" SessionField="co_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="font-weight-bold">Question:</td>
                <td>
                    <asp:TextBox ID="Quest" class="form-control" runat="server" Height="231px" TextMode="MultiLine" Width="605px"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="font-weight-bold">Option 1</td>
                <td >
                    <asp:TextBox class="form-control" ID="Op_1" runat="server" CssClass="form-control" Width="256px"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Op_1" ErrorMessage="RequiredFieldValidator">Enter Option</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="font-weight-bold">Option 2</td>
                <td>
                    <asp:TextBox class="form-control" ID="Op_2" CssClass="form-control" runat="server" Width="252px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Op_2" ErrorMessage="RequiredFieldValidator">Enter Option</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="font-weight-bold">Option 3</td>
                <td>
                    <asp:TextBox class="form-control" ID="Op_3" CssClass="form-control" runat="server" Width="259px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Op_3" ErrorMessage="RequiredFieldValidator">Enter Option</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="font-weight-bold">Option 4</td>
                <td >
                    <asp:TextBox class="form-control" ID="Op_4" CssClass="form-control" runat="server" Width="255px"></asp:TextBox>
                </td>
                <td class="font-weight-bold">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Op_4" ErrorMessage="Enter Option"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="font-weight-bold">Correct Answer:</td>
                <td class="custom-radio">
                    <asp:RadioButtonList ID="Correct_ans" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Option 1</asp:ListItem>
                        <asp:ListItem>Option 2</asp:ListItem>
                        <asp:ListItem>Option 3</asp:ListItem>
                        <asp:ListItem>Option 4</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td ></td>
                <td ><span class="site-menu js-clone-nav d-none d-lg-block">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Correct_ans" ErrorMessage="Choose correct option" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </span></td>
                <td ></td>
            </tr>
            <tr>
                <td><span class="site-menu js-clone-nav d-none d-lg-block"><span class="bg-primary text-white py-3 px-4 rounded">
                    <asp:Button ID="Add" runat="server" class="btn btn-primary  py-2 px-5" OnClick="Add_Click" Text="Add" />
                    </span></span></td>
            </tr>
        </table>
            </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Add" EventName="Click" />
        </Triggers>
        </asp:UpdatePanel>
</asp:Content>

