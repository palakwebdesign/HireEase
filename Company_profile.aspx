<%@ Page Title="" Language="C#" MasterPageFile="~/Company.master" AutoEventWireup="true" CodeFile="Company_profile.aspx.cs" Inherits="Company_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center">
            <h2 class="mb-0">Company Profile</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>
    <div>

        <table class="container">
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">Name</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="co_name" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style2">&nbsp;</td>
                    </div>
                </div>
            </tr>
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">Address</td>
                        <td>
                            <asp:TextBox ID="address" runat="server" Height="55px" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
                        </td>
                    </div>
                </div>
            </tr>
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">Contact</td>
                        <td>
                            <asp:TextBox ID="contact" runat="server" class="form-control" TextMode="Phone" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contact" ErrorMessage="Enter Proper Contact number"></asp:RequiredFieldValidator>
                        </td>
                    </div>
                </div>
            </tr>
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">Email</td>
                        <td>
                            <asp:TextBox ID="email" runat="server" class="form-control" TextMode="Email"  ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Enter Proper email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </div>
                </div>
            </tr>
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">Company Website</td>
                        <td>
                            <asp:TextBox ID="website" runat="server" class="form-control" TextMode="Url" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="website" ErrorMessage="Enter Proper website"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="website" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                        </td>
                    </div>
                </div>
            </tr>
            <tr>
                <div class="row form-group">
                    <div class="col-md-12 mb-3 mb-md-0">
                        <td class="font-weight-bold">CEO Name</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="ceo" runat="server" class="form-control" ></asp:TextBox>
                        </td>
                        <td class="auto-style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ceo" ErrorMessage="Enter CEO Name "></asp:RequiredFieldValidator>
                        </td>
                    </div>
                </div>
            </tr>
            <tr>

                <td>
                    <div class="row form-group">
                        <div class="col-md-12">
                            <asp:Button ID="Button1" runat="server" Text="Save Changes" class="btn btn-primary pill  px-4 py-2" OnClick="Button1_Click" />
                            <br />
                        </div>
                    </div>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

