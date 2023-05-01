<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CryptoInfo.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="pnlNotAuth" runat="server">
        <h2>You are not logged in.</h2>
        <a href="CreateAccount.aspx">Create a new account</a>
    </asp:Panel>
    <div class="authPnl">
        <asp:Panel ID="pnlUserProfile" runat="server">
            <h2>Welcome <asp:Label ID="lblWelcome" runat="server" Text=""> </asp:label></h2>
            <span>Username: </span><asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
            <br />
            <span>Phone Number: </span> <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
            <br />
            <span>Email:</span><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
            <br />
            <span>Choose your favorite Crypto Currency</span>
            <asp:DropDownList ID="ddlFavCrypto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="favCrypto">
                <asp:ListItem Value="-1">Select</asp:ListItem>
                <asp:ListItem Value="Bitcoin">Bitcoin</asp:ListItem>
                <asp:ListItem Value="Ethereum">Ethereum</asp:ListItem>
                <asp:ListItem Value="Litecoin">Litecoin</asp:ListItem>
            </asp:DropDownList>
        </asp:Panel>
    </div>
</asp:Content>
