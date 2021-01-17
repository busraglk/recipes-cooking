<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleri.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style17 {
            margin-left: 0px;
            background-color: #CCCCCC;
            margin-top:15px;
        }
        .auto-style24 {
            width: 41px;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style25 {
            width: 48px;
        }
        .auto-style26 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style17">
        <table class="auto-style6">
            <tr>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td> <strong>ONAYSIZ TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="648px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                        <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/öneri.png" Width="30px" />  </a>
                       </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
      <asp:Panel ID="Panel3" runat="server" CssClass="auto-style17">
        <table class="auto-style6">
            <tr>
                <td class="auto-style24"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style23" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style25"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style23" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"   />
                    </strong></td>
                <td> <strong>ONAYLI TARİF LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="648px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style26">
                        <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/öneri.png" Width="30px" />  </a>
                       </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
  
</asp:Content>
