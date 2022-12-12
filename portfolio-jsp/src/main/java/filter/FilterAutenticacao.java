package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@WebFilter(urlPatterns = {"/principal/*"}) /*Intercepta todas as requisições que vierem do projeto ou mapeamento */
public class FilterAutenticacao implements Filter {

    
    public FilterAutenticacao() {
        
    }

	
    /*Encerra os processos quando o servidor é parado*/
	public void destroy() {
		
	}

	
	/*Intercepta as requisições e as respostas no sistema*/
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		String urlParaAutenticar = req.getServletPath(); /*URL que esta sendo acessada*/
		
		if (usuarioLogado == null && !urlParaAutenticar.equalsIgnoreCase("/principal/ServletLogin")) {
			
			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
			request.setAttribute("msg", "Por favor realize o login!");
			redireciona.forward(request, response);
			return;
			
		} else {
			
			chain.doFilter(request, response);
			
		}
			
		
	}

	
	/*Inicia os processos ou recursos quando o servidor sobe o projeto*/
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
