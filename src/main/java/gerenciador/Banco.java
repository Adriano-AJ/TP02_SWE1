package gerenciador;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	    private static List<Produto> lista = new ArrayList<>();
	    private static Integer chaveSequencial = 1;

	    static {
	        Produto p = new Produto();
	        p.setId(chaveSequencial++);
	        p.setNome("Alura");
	        
	        Produto p2 = new Produto();
	        p2.setId(chaveSequencial++);
	        p2.setNome("Caelum");
	        
	        lista.add(p);
	        lista.add(p2);
	    }

	    public void adiciona(Produto p) {
	        p.setId(Banco.chaveSequencial++);
	        Banco.lista.add(p);
	    }

	    public List<Produto> getProdutos() {
	        return Banco.lista;
	    }

	    public void removeProduto(Integer id) {
	        Iterator<Produto> it = lista.iterator();

	        while (it.hasNext()) {
	            Produto p = it.next();

	            if (p.getId() == id) {
	                it.remove();
	            }
	        }
	    }

	    public Produto buscaEmpresaPelaId(Integer id) {
	        for (Produto p : lista) {
	            if (p.getId() == id) {
	                return p;
	            }
	        }
	        return null;
	    }
}
