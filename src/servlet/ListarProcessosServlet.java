package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProcessoDao;


@WebServlet("/ListarProcessos")
public class ListarProcessosServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ProcessoDao pDao = new ProcessoDao();
		
		request.setAttribute("lista", pDao.listarProcesso());
				
		
		RequestDispatcher rd = request.getRequestDispatcher("ListaProcessos.jsp");
		rd.forward(request, response);
	}
	
}
