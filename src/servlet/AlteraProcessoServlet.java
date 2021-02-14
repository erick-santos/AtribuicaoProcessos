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

@WebServlet("/AlteraProcesso")
public class AlteraProcessoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Processo p = new Processo();
		p.setId(Integer.parseInt(request.getParameter("idProcesso")));
		p.setNumeroProcesso(request.getParameter("numeroProcesso"));
		p.setLinhaMaterial(request.getParameter("linhaMaterial"));
		p.setEixoTematico(request.getParameter("eixoTematico"));
		p.setMembroEquipe(request.getParameter("membroEquipe"));

		java.util.Date data = new java.util.Date();
		p.setLd(data);
		
		

		try {
			
			ProcessoDao pDao = new ProcessoDao();
			pDao.alterarProcesso(p);

			String mensagem = "Atribuição alterada com sucesso!";
			request.setAttribute("MSG", mensagem);
			request.setAttribute("PROCESSO", p);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("AlteraProcesso.jsp");
		rd.forward(request, response);

	}
}
