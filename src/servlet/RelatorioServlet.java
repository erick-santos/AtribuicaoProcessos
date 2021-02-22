package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import DAO.ProcessoDao;
import model.Processo;

@WebServlet("/Relatorio")
public class RelatorioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int n = 0;
			ProcessoDao pDao = new ProcessoDao();
			List<Processo> listaProcesso = pDao.listarProcesso();

			// declare file name to be create
			String filename = "C:\\Users\\erick\\Desktop\\Relatorio.xlsx";

			// creating an instance of HSSFWorkbook class
			XSSFWorkbook workbook = new XSSFWorkbook();

			// invoking creatSheet() method and passing the name of the sheet to be created
			XSSFSheet sheet = workbook.createSheet("Relatorio");

			// creating the 0th row using the createRow() method
			XSSFRow rowhead = sheet.createRow((short) 0);

			// creating cell by using the createCell() method and setting the values to the
			// cell by using the setCellValue() method
			rowhead.createCell(0).setCellValue(" ");
			rowhead.createCell(1).setCellValue("Número do Processo");
			rowhead.createCell(2).setCellValue("Linha de Material");
			rowhead.createCell(3).setCellValue("Eixo Tematico");
			rowhead.createCell(4).setCellValue("Colaborador");
			rowhead.createCell(5).setCellValue("Data da Operação");

			for (Processo processo : listaProcesso) {
				// creating the rows
				XSSFRow row = sheet.createRow((short) n + 1);

				System.out.println("iteração n=" + n);

				// inserting data in the first row
				row.createCell(0).setCellValue(n);
				row.createCell(1).setCellValue(processo.getNumeroProcesso());
				row.createCell(2).setCellValue(processo.getLinhaMaterial());
				row.createCell(3).setCellValue(processo.getEixoTematico());
				row.createCell(4).setCellValue(processo.getMembroEquipe());
				row.createCell(5).setCellValue(processo.getLd().toString());

				n = n + 1;
			}

			FileOutputStream fileOut = new FileOutputStream(filename);
			workbook.write(fileOut);

			// closing the Stream
			fileOut.close();

			// closing the workbook
			workbook.close();

			// prints the message on the console
			System.out.println("Exportado arquivo Excel com sucesso!.");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("TelaDistribuicao.jsp");
	}
}
