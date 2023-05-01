<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CryptoInfo.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> CryptoInfo - Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <div class="userInfo">
        <h2>Contact Us!</h2>
        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Missing Name" ControlToValidate="tbName" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblDate" runat="server" Text="Date:"></asp:Label>
        <asp:TextBox ID="tbDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="Missing Date" ControlToValidate="tbDate" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Missing Email" ControlToValidate="tbEmail" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="evEmail" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None" ControlToValidate="tbEmail"></asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblConfirm" runat="server" Text="Confirm:"></asp:Label>
        <asp:TextBox ID="tbConfirm" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Emails do not match" ControlToValidate="tbConfirm" ControlToCompare="tbEmail" Display="None"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Missing Confirmation Email" Display="None" ControlToValidate="tbConfirm"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="tbSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Missing Subject" ControlToValidate="tbSubject" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblMessage" runat="server" Text="Message:"></asp:Label>
        <asp:TextBox ID="tbMessage" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Missing Message" ControlToValidate="tbMessage" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>


         <div class="gvContact">
        <asp:GridView ID="Contactgv" runat="server" AutoGenerateColumns="False" BorderColor="Black" DataKeyNames="Id" DataSourceID="UserMessageTable" Width="485px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
            </Columns>
        </asp:GridView>
        <h3>Selected Message</h3>
        <p>
            <asp:DetailsView ID="SelectedMessageDV" runat="server" Height="50px" Width="482px" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SelectedMessage" BorderColor="Black">
                <Fields>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Message" HeaderText="Message"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
        </p>
        </div>
        <br />
        <div class="contactFV">
        <h3> Message Table Interactions</h3>
        <p>
            <asp:FormView ID="contactFV" runat="server" DataKeyNames="Id" DataSourceID="UserMessageTable" AllowPaging="True">
                <EditItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Date:
                    <asp:TextBox Text='<%# Bind("Date") %>' runat="server" ID="DateTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    Message:
                    <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /><br />
                    Subject:
                    <asp:TextBox Text='<%# Bind("Subject") %>' runat="server" ID="SubjectTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Name:
                    <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" /><br />
                    Date:
                    <asp:TextBox Text='<%# Bind("Date") %>' runat="server" ID="DateTextBox" /><br />
                    Email:
                    <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                    Message:
                    <asp:TextBox Text='<%# Bind("Message") %>' runat="server" ID="MessageTextBox" /><br />
                    Subject:
                    <asp:TextBox Text='<%# Bind("Subject") %>' runat="server" ID="SubjectTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    Name:
                    <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" /><br />
                    Date:
                    <asp:Label Text='<%# Bind("Date") %>' runat="server" ID="DateLabel" /><br />
                    Email:
                    <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br />
                    Message:
                    <asp:Label Text='<%# Bind("Message") %>' runat="server" ID="MessageLabel" /><br />
                    Subject:
                    <asp:Label Text='<%# Bind("Subject") %>' runat="server" ID="SubjectLabel" /><br />
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
        </p>
      </div>
    <asp:SqlDataSource ID="SelectedMessage" runat="server" ConnectionString='<%$ ConnectionStrings:UserAccountCS %>' SelectCommand="SELECT * FROM [UserMessage] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Contactgv" PropertyName="SelectedValue" Name="Id" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>









      <asp:SqlDataSource ID="UserMessageTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:UserAccountCS %>' DeleteCommand="DELETE FROM [UserMessage] WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))" InsertCommand="INSERT INTO [UserMessage] ([Name], [Date], [Email], [Message], [Subject]) VALUES (@Name, @Date, @Email, @Message, @Subject)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserMessage]" UpdateCommand="UPDATE [UserMessage] SET [Name] = @Name, [Date] = @Date, [Email] = @Email, [Message] = @Message, [Subject] = @Subject WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Date" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Date" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Date" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Date" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Message" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
