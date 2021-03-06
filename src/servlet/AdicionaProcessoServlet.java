package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProcessoDao;
import model.Contagem;
import model.Processo;

@WebServlet("/AdicionaProcesso")
public class AdicionaProcessoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Processo p = new Processo();

		p.setNumeroProcesso(request.getParameter("numeroProcesso"));
		p.setLinhaMaterial(request.getParameter("linhaMaterial"));
		p.setEixoTematico(request.getParameter("eixoTematico"));
		p.setMembroEquipe(request.getParameter("membroEquipe"));

		java.util.Date data = new java.util.Date();
		p.setLd(data);

		ProcessoDao pDao = new ProcessoDao();
		// teste de conferencia de numero de processo
		pDao.confereNumeroProcesso(request.getParameter("numeroProcesso"));
		// fim do teste
		try {
			pDao.adicionarProcesso(p);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		String mensagem = "Processo atribuido com sucesso!";
		request.setAttribute("MSG", mensagem);

		RequestDispatcher rd = request.getRequestDispatcher("TelaDistribuicao.jsp");
		rd.forward(request, response);
	}
}
