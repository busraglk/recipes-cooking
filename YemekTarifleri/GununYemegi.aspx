<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleri.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
        height: 427px;
    }
    .auto-style8 {
        height: 26px;
    }
    .auto-style9 {
        font-size: xx-large;
        color: #FFFFFF;
    }
    .auto-style10 {
        text-align: center;
        height: 39px;
    }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            font-size: medium;
        }
        .auto-style14 {
            height: 38px;
            text-align: left;
            width: 180px;
            background-color: powderblue;
            color: #000000;
        }
        .auto-style15 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style7">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong><span class="auto-style13">Malzemeler: </span></strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <strong><span class="auto-style13">Tarif:</span></strong><br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="286px" ImageUrl='<%# Eval("YemekResim") %>' Width="370px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style11">
                        <tr>
                            <td><span class="auto-style15"><strong><span class="auto-style13">Puan:</span><span class="auto-style3"> </span></strong>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </span>&nbsp;</td>
                            <td class="auto-style12">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong><span class="auto-style13">Eklenme Tarihi:</span></strong>&nbsp;<em><asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </em></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
   
</asp:Content>
