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

@WebServlet("/GerenciarProcesso")
public class GerenciarProcessoServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//Recebe o id do processo e insere na instância p
		Processo p = new Processo();
		p.setId(Integer.parseInt((request.getParameter("idProcesso"))));

		ProcessoDao pDao = new ProcessoDao();
		p = pDao.selecionarProcessoById(p.getId());

		//teste
		request.setAttribute("PROCESSO", p);

		RequestDispatcher rd = request.getRequestDispatcher("AlteraProcesso.jsp");
		rd.forward(request, response);
	}

}
