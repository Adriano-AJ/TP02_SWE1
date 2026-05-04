// Dupla: Adriano Junior de Souza Almeida e Arthur Lanzilotti Farjanes
package gerenciador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/alteraProduto")
public class AlteraProdutoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        System.out.println("Alterando produto v2.0");

        String paramId = request.getParameter("id");
        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        String paramUnidade = request.getParameter("unidadeCompra");
        String paramQtd = request.getParameter("qtdPrevistoMes");
        String paramPreco = request.getParameter("precoMaxComprado");

        Integer id = Integer.valueOf(paramId);
        int unidade = Integer.parseInt(paramUnidade);
        double qtd = Double.parseDouble(paramQtd); 
        double preco = Double.parseDouble(paramPreco);

        Banco banco = new Banco();
        Produto produto = banco.buscaProdutoPelaId(id);
        
        produto.setNome(nome);
        produto.setDescricao(descricao);
        produto.setUnidadeCompra(unidade);
        produto.setQtdPrevistoMes(qtd);
        produto.setPrecoMaxComprado(preco);

        response.sendRedirect("listaProdutos");
    }
}