<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CryptoInfo.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Crypto Info - Home</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
            <main>
                <div class="box1">
                    <a href="Learn.aspx"><p>LEARN</p></a>
                </div>
            
                <div class="box2">
                    <a href="Prices.aspx"><p>PRICES</p></a>
                </div>
            
                <div class="box3">
                    <a href="About.aspx"><p>ABOUT</p></a>
                </div>
            </main>

</asp:Content>
