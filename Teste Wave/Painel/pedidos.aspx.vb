Public Class pedidos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            carregaPedido()
        End If

    End Sub


    Sub carregaPedido()
        Dim Listagem As DataTable = Select_("SELECT c.email AS email, pd.nome AS nomeproduto, p.qtdProduto AS qtd, 
                                                    pd.preco AS preco, (pd.preco * p.qtdProduto) AS precototal 
                                             FROM pedido p
                                             INNER JOIN cadastro c ON p.idCadastro = c.id
                                             INNER JOIN produto pd ON p.idProduto = pd.idproduto")
        rpt_Pedidos.DataSource = Listagem
        rpt_Pedidos.DataBind()
    End Sub


End Class