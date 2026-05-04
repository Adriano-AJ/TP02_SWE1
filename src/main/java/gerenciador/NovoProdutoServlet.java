// Dupla: Adriano Junior de Souza Almeida e Arthur Lanzilotti Farjanes
package gerenciador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        System.out.println("Cadastrando novo produto");

        String nome = request.getParameter("nome");
        String descricao = request.getParameter("descricao");
        String paramUnidade = request.getParameter("unidadeCompra");
        String paramQtd = request.getParameter("qtdPrevistoMes");
        String paramPreco = request.getParameter("precoMaxComprado");

        Produto p = new Produto();
        p.setNome(nome);
        p.setDescricao(descricao);
        
        if(paramUnidade != null && !paramUnidade.isEmpty()) p.setUnidadeCompra(Integer.parseInt(paramUnidade));
        if(paramQtd != null && !paramQtd.isEmpty()) p.setQtdPrevistoMes(Double.parseDouble(paramQtd));
        if(paramPreco != null && !paramPreco.isEmpty()) p.setPrecoMaxComprado(Double.parseDouble(paramPreco));
        
        Banco banco = new Banco();
        banco.adiciona(p);

        request.setAttribute("produto", p.getNome());
        response.sendRedirect("listaProdutos");
    }
}