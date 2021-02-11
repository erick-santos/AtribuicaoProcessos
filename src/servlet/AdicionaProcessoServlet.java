package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdicionaProcesso")
public class AdicionaProcessoServlet extends HttpServlet {

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			String numeroProcesso = request.getParameter("numeroProcesso");
			String linhaMaterial = request.getParameter("linhaMaterial");
			String eixoTematico = request.getParameter("eixoTematico");
			String membroEquipe = request.getParameter("membroEquipe");

			LocalDate ld = LocalDate.now();
			
			
			PrintWriter out = response.getWriter();
			
			out.println("O processo foi atribuido com sucesso!");
			out.println("======================================================");
			out.println("Processo nº:" + numeroProcesso);
			out.println("Linha de aterial:" + linhaMaterial);
			out.println("Eixo temático:" + eixoTematico);
			out.println("Colaborador:" + membroEquipe);
			out.println("Data:" + ld);
			out.println("======================================================");
			
				
			
		}
	}

