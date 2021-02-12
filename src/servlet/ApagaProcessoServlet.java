package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProcessoDao;
import model.Processo;

@WebServlet("/ApagarProcessos")
public class ApagaProcessoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Processo p = new Processo();
		p.setId(Integer.parseInt(request.getParameter("idProcesso"))); 
		
		ProcessoDao pDao = new ProcessoDao();
		pDao.excluir(p);

		response.sendRedirect("ListarProcessos");
				

	}
}
