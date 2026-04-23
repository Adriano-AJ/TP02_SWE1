package gerenciador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mostraProduto")
public class MostraProdutoServlet extends HttpServlet {
		
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {

			// 1. Pega o ID que veio no link da listagem (ex: mostraProduto?id=2)
			String paramId = request.getParameter("id");
			Integer id = Integer.valueOf(paramId);

			// 2. Busca o objeto completo na lista estática
			Banco banco = new Banco();
			Produto produto = banco.buscaProdutoPelaId(id);

			System.out.println("Carregando dados para edição: " + produto.getNome());

			// 3. Coloca o objeto na requisição para o JSP conseguir ler
			request.setAttribute("produto", produto);

			// 4. Encaminha para o formulário de edição que criamos
			RequestDispatcher rd = request.getRequestDispatcher("/alteraProduto.jsp");
			rd.forward(request, response);
		}
}
