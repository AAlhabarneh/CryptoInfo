<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Prices.aspx.cs" Inherits="CryptoInfo.Prices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Crypto Info - Prices</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="widget">
<coingecko-coin-price-marquee-widget  coin-ids="bitcoin,ethereum,litecoin,ripple,polkadot,dogecoin,matic-network,binancecoin,solana,cardano,tether,avalanche-2" currency="usd" background-color="#ffffff" locale="en">
    </div>

    <div class="heat-map">
        <coingecko-coin-heatmap-widget  height="500" locale="en" top="20"></coingecko-coin-heatmap-widget>
    </div>
</asp:Content>
