<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="CryptoInfo.CreateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Crypto Info - Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ValidationSummary ID="vsUserAccount" runat="server" />
    <div class="userAccount">
        <h2>Create User Account</h2>
        <asp:Label ID="lblfName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="tbfName" runat="server" Width="163px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName2" runat="server" ErrorMessage="Missing Name" Display="None" ControlToValidate="tbfName"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="tbUsername" runat="server" Width="163px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Missing Username" Display="None" ControlToValidate="tbUsername"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Missing Password" Display="None" ControlToValidate="tbPassword"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Password do not match" Display="None" ControlToCompare="tbConfirmPass" ControlToValidate="tbPassword"></asp:CompareValidator>
        <br />
        <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="tbConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvConfirmPass" runat="server" ErrorMessage="Missing Confirm Password" Display="None" ControlToValidate="tbConfirmPass"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
        <asp:TextBox ID="tbPhone" runat="server" Width="163px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Missing Phone" Display="None" ControlToValidate="tbPhone"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Invalid Phone" Display="None" ControlToValidate="tbPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="tbEmail" runat="server" Width="163px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Missing Email" Display="None" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid Email" Display="None" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btnSubmit2" runat="server" Text="Submit" OnClick="btnSubmit2_Click" />
    </div>

    <asp:SqlDataSource ID="UserAccountTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:UserAccountCS %>' DeleteCommand="DELETE FROM [UserAccount] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))" InsertCommand="INSERT INTO [UserAccount] ([Name], [Username], [Password], [Email], [Phone]) VALUES (@Name, @Username, @Password, @Email, @Phone)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserAccount]" UpdateCommand="UPDATE [UserAccount] SET [Name] = @Name, [Username] = @Username, [Password] = @Password, [Email] = @Email, [Phone] = @Phone WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
