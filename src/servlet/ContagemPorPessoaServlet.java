package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProcessoDao;
import model.Contagem;


@WebServlet("/ContagemPorPessoa")
public class ContagemPorPessoaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Contagem de processos por pessoa
		Contagem c = new Contagem();
		ProcessoDao pDao = new ProcessoDao();
		try {
			c = pDao.contagemPorPessoa();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("QTD", c);
		// Fim da contagem de processos por pessoa

		RequestDispatcher rd = request.getRequestDispatcher("ContagemPorPessoa.jsp");
		rd.forward(request, response);
	}
}
