<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Painel/MasterPainelPage.Master" CodeBehind="pedidos.aspx.vb" Inherits="Teste_Wave.pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div runat="server" id="fundoElementos" class="fundoElementos">
        <div class="col-xs-12">
            <h1 class="page-header" ><a href="#">Pedidos</a></h1>
        </div>
        <div runat="server" id="divMae" class="divMae">
            <table border="0" class="table table-hover">
                <tr>
                    <td style="color: White">Cliente</td>
                    <td style="color: White">Produto</td>
                    <td style="color: White">Qtd produto</td>
                    <td style="color: White">Preço uni</td>
                    <td style="color: White">Total</td>
                </tr>
                <asp:Repeater ID="rpt_Pedidos" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td style="vertical-align: middle;">
                                <%#Eval("email")%>
                            </td>
                            <td style="vertical-align: middle;">
                                <%# Eval("nomeProduto")%>
                            </td>
                            <td style="vertical-align: middle;">
                                <%# Eval("qtd")%>
                            </td>       
                            <td style="vertical-align: middle;">
                                <%# Eval("preco")%>
                            </td>                         
                            <td style="vertical-align: middle;">
                                <%# Eval("precototal")%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </table>

        </div>
    </div>



</asp:Content>
