<%@ Page Title="" Language="C#" MasterPageFile="~/Candidate.master" AutoEventWireup="true" CodeFile="Candidate_Profile.aspx.cs" Inherits="Candidate_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div style="height: 113px;"></div>
    <div class="unit-5 overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container text-center" style="left: 0px; top: 11px">
            <h2 class="mb-0">Candidate Profile</h2>
            <p class="mb-0 unit-6">
        </div>
    </div>
       <br />
    <table class="container" >
        <tr class="row form-group">
            <td class="font-weight-bold">Name: <asp:TextBox class="form-control" ID="name" runat="server" Width="333px"></asp:TextBox>
            </td>
        </tr>
        <tr class="row form-group" >
            <td class="font-weight-bold">Birth date: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox class="form-control" ID="dob"  runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dob" ErrorMessage="select proper date"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr class="row form-group">
            <td class="font-weight-bold">Contact No:<asp:TextBox class="form-control" ID="C_no" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter complete number" ControlToValidate="C_no" ValidationExpression="^[1-9][0-9]{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr class="row form-group">
            <td class="font-weight-bold">Gender:<asp:RadioButtonList class="form-control" type="checkbox" ID="gender" runat="server" AutoPostBack="False" RepeatDirection="Horizontal">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
            </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="select gender" ControlToValidate="gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="row form-group">
            <td class="font-weight-bold">10th Percentage:<asp:TextBox class="form-control" ID="ssc_per" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ssc_per" ErrorMessage="enter percentage"></asp:RequiredFieldValidator>
            </td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td>
            <td class="font-weight-bold">12th Percentage:<asp:TextBox class="form-control" ID="hsc_per" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" Type="Double" ControlToValidate="hsc_per" MinimumValue="35" MaximumValue="100"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="hsc_per" ErrorMessage="enter percentage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="row form-group">
            <td class="font-weight-bold">Degree Percentage:<asp:TextBox class="form-control" ID="deg_per" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" ControlToValidate="deg_per" MaximumValue="100" MinimumValue="35" Type="Double"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="deg_per" ErrorMessage="enter percentage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="row form-group">
            <td class="font-weight-bold">Backlogs(if any):<asp:TextBox class="form-control" ID="backlog" runat="server" TextMode="Search"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="RangeValidator" ControlToValidate="backlog" MinimumValue="0" MaximumValue="5"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="backlog" ErrorMessage="Enter 0 if no back log"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="row form-group">
            <td colspan="2">
                <asp:CheckBox ID="Check" runat="server" ForeColor="#00CC00" class="custom-checkbox" Text="i assure that the above mention details are true to my knowledge" />
            </td>
        </tr>

        <tr class="row form-group">
            <td>
                <asp:Button ID="candidate_reg" class="btn btn-primary pill  px-4 py-2" runat="server" Text="Register" OnClick="candidate_reg_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


