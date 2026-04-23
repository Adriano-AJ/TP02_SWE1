package gerenciador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novoProduto")
public class NovoProdutoServlet extends HttpServlet{

	    private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	            throws ServletException, IOException {
	        
	        System.out.println("Cadastrando nova empresa");

	        String nomeP = request.getParameter("nome");
	        
	        

	        Produto p = new Produto();
	        p.setNome(nomeP);
	        
	        Banco banco = new Banco();
	        banco.adiciona(p);

	        request.setAttribute("produto", p.getNome());

	        response.sendRedirect("listaProdutos");
	    }
}
