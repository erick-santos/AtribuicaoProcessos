<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="pt_BR" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		$("#linhaMaterial1").click(function() {
			$(".div-consumo").show();
			$(".div-permanente").hide();
		});
		$("#linhaMaterial2").click(function() {
			$(".div-permanente").show();
			$(".div-consumo").hide();

		});
	});
</script>
<title>Altera��o de Processos</title>
</head>
<body>
	
	<div class="container pt-3 border border-light" align="left">
	<c:import url="Header.jsp"></c:import>
	
		<div align="center">
			<div class="btn-group btn-group-lg" role="group">
				<form action="ListarProcessos" method="get">
					<button type="submit" class="btn btn-info btn-lg">Processos
						Atribuidos</button>
				</form>
				<a href="TelaDistribuicao.jsp" class="btn btn-info btn-lg"
					role="button" aria-disabled="true">Distribui��o de Processos</a>
				<form action="ContagemPorPessoa" method="get">
					<button type="submit" class="btn btn-info btn-lg">Contagem
						Por Pessoa</button>
				</form>
				<form action="XXX" method="get">
					<button type="submit" class="btn btn-info btn-lg">Relat�rios</button>
				</form>
			</div>
		</div>

		<div class="container pt-3 border border-light" align="left">

			<h1 class="display-4">
				Altera��o de Processos
				</h2>

				<!-- Recebe o objeto processo de GerenciarProcessoServlet -->
				<c:set var="processo" value="${PROCESSO}" />


				<!-- Inicio da mensagem de sucesso -->
				<%
					String msg = (String) request.getAttribute("MSG");
				%>
				<%
					if (msg != null) {
					request.setAttribute("MSG", null);
				%>
				<div class="alert alert-success alert-dismissible fade show"
					role="alert">
					<strong><%=msg%></strong>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<%
					}
				%>
				<!-- Fim da mensagem de sucesso-->


				<!-- Tabela com o processo a ser alterado -->
				<table id="idTabelaProcessos" class="table table-striped">
					<thead align="left">
						<tr>
							<th>N�mero do Processo</th>
							<th>Linha de Material</th>
							<th>Eixo Tematico</th>
							<th>Colaborador</th>
							<th>Fase</th>
						</tr>
					</thead>
					<tr align="left">
						<td>${PROCESSO.numeroProcesso}</td>
						<td>${PROCESSO.linhaMaterial}</td>
						<td>${PROCESSO.eixoTematico}</td>
						<td>${PROCESSO.membroEquipe}</td>
						<td>N�o definido</td>
					</tr>
				</table>
				<!-- Fim da Tabela com o processo a ser alterado -->
				<br>

				<!-- Construcao dos Radio Buttons  -->
				<div>

					<p>Para alterar escolha a linha de material:</p>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="linhaMaterial"
							id="linhaMaterial1" value="Consumo"> <label
							class="form-check-label" for="exampleRadios1"> Consumo </label>
					</div>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="linhaMaterial"
							id="linhaMaterial2" value="Permanente"> <label
							class="form-check-label" for="exampleRadios2"> Permanente
						</label>
					</div>

				</div>
				<!-- Fim dos Radio Buttons  -->


				<!-- Manipular divs conforme radio button escolhido -->

				<!-- Div de Material de Consumo -->
				<form action="AlteraProcesso" method="get">

					<div class="col-md-12 div-consumo"
						style="padding: 20px; display: none" align="left">
						<div class="form-group">
							<input type="hidden" name="idProcesso" value="${PROCESSO.id}">
							<input type="text" value="${PROCESSO.numeroProcesso}"
								class="form-control" name="numeroProcesso"
								placeholder="Insira o n�mero do processo" required="required"
								maxlength="64"> <input type="hidden"
								name="linhaMaterial" value="Consumo">

						</div>


						<p>Escolha a eixo tem�tico:</p>
						<select class="form-control" name="eixoTematico"
							required="required">
							<!-- Inclus�o de Op��es de Material de Consumo  -->
							<option></option>
							<option>GENERO DE ALIMENTA��O</option>
							<option>MATERIAL EDUCATIVO E ESPORTIVO</option>
							<option>MATERIAL PARA FESTIVIDADES E HOMENAGENS</option>
							<option>MATERIAL DE EXPEDIENTE</option>
							<option>MATERIAL P/ PROCESSAMENTO DE DADOS</option>
							<option>MATERIAL P/ ACONDICIONAMENTO E EMBALAGENS</option>
							<option>MATERIAL DE CAMA, MESA E BANHO</option>
							<option>MATERIAL DE COPA E COZINHA</option>
							<option>MATERIAL DE LIMPEZA E PRODUTOS DE HIGIENIZA�AO</option>
							<option>UNIFORMES, TECIDOS E AVIAMENTOS</option>
							<option>MATERIAL P/MANUTEN��O DE BENS IM�VEIS</option>
							<option>MATERIAL P/ MANUTEN�AO DE BENS M�VEIS</option>
							<option>MATERIAL EL�TRICO E ELETR�NICO</option>
							<option>MATERIAL DE MANOBRA DE PATRULHAMENTO</option>
							<option>MATERIAL DE PROTE��O E SEGURAN�A</option>
							<option>MATERIAL P/ �UDIO, V�DEO E FOTO</option>
							<option>MATERIAL PARA COMUNICA��ES</option>
							<option>SEMENTES, MUDAS DE PLANTAS E INSUMOS</option>
							<option>MATERIAL LABORATORIAL</option>
							<option>MATERIAL HOSPITALAR</option>
							<option>MATERIAL P/MANUTEN��O DE VE�CULOS</option>
							<option>MATERIAL P/ UTILIZA��O EM GR�FICA</option>
							<option>FERRAMENTAS</option>
							<option>MATERIAL P/ REABILITA��O PROFISSIONAL</option>
							<option>MATERIAL SINALIZA��O VISUAL E OUTROS</option>
							<option>MATERIAL T�CNICO PARA SELE��O E TREINMENTO</option>
							<option>MATERIAL BIBLIOGR�FICO</option>
							<option>AQUISI��O DE SOFTWARES DE BASE</option>
							<option>BANDEIRAS, FL�MULAS E INS�GNIAS</option>
							<option>DISCOTECAS E FILMOTECAS N�O IMOBILIZ�VEL</option>
							<option>MATERIAL PARA DIVULGA��O</option>

						</select>

						<!-- Sele��o de Colaborador -->
						<br>
						<p>Escolha o colaborador:</p>
						<select class="form-control" name="membroEquipe"
							required="required">
							<!-- Inclus�o de Op��es de Material de Consumo  -->
							<option></option>
							<option>ZippyRascal</option>
							<option>RuddyNapoleon</option>
							<option>KaputEgg</option>
							<option>DefiantDallas</option>
							<option>EarthyLeo</option>

						</select>
						<!-- Fim de Sele��o de Colaborador -->

						<!-- Bot�es -->
						<div align="left">
							<br>
							<button type="submit" class="btn btn-primary btn-lg">Atribuir
								Processo</button>
						</div>
						<!--  Fim de Bot�es -->
					</div>
				</form>



				<!-- Div de Material Permanente -->
				<form action="AlteraProcesso" method="get">
					<div class=" col-md-12 div-permanente"
						style="padding: 20px; display: none" align="left">
						<div class="form-group">

							<input type="hidden" name="idProcesso" value="${PROCESSO.id}">
							<input type="text" value="${PROCESSO.numeroProcesso}"
								class="form-control" name="numeroProcesso"
								placeholder="Insira o n�mero do processo" required="required"
								maxlength="64"> <input type="hidden"
								name="linhaMaterial" value="Permanente">


						</div>


						<p>Escolha a eixo tem�tico:</p>
						<select class="form-control" name="eixoTematico"
							required="required">
							<!-- Inclus�o de Op��es Permanente  -->
							<option></option>
							<option>APARELHOS DE MEDICAO E ORIENTACAO</option>
							<option>APARELHOS E EQUIPAMENTOS DE COMUNICACAO</option>
							<option>EQUIPAM/UTENSILIOS MEDICOS,ODONTO,LAB E HOSP</option>
							<option>APARELHO E EQUIPAMENTO P/ESPORTES E DIVERSOES</option>
							<option>EQUIPAMENTO DE PROTECAO, SEGURANCA E SOCORRO</option>

							<option>EQUIPAMENTOS DE PROCESSAMENTO DE DADOS</option>
							<option>EQUIPAMENTOS PARA AUDIO, VIDEO E FOTO</option>
							<option>MAQUINAS E UTENSILIOS DE ESCRITORIO</option>
							<option>APARELHOS E UTENSILIOS DOMESTICOS</option>
							<option>MOBILIARIO EM GERAL</option>
							<option>COLECOES E MATERIAIS BIBLIOGRAFICOS</option>
							<option>DISCOTECAS E FILMOTECA</option>

							<option>VEICULOS EM GERAL</option>
							<option>VEICULOS DE TRACAO MECANICA</option>
							<option>EQUIPAMENTOS, PECAS E ACESSORIOS P/AUTOMOVEIS</option>
							<option>EQUIPAMENTOS HIDRAULICOS E ELETRICOS</option>

							<option>MAQUINAS, FERRAMENTAS E UTENSILIOS DE OFICINA</option>
							<option>MAQUINAS, UTENSILIOS E EQUIPAMENTOS DIVERSOS</option>


							<!-- N�o utilizados -->
							<!-- 
					<option>ARMAMENTOS</option>
					<option>PECAS NAO INCORPORAVEIS A IMOVEIS</option>
					<option>MATERIAL DE USO DURADOURO</option>
					<option>OBRAS DE ARTE E PECAS PARA EXPOSICAO</option>
					<option>INSTRUMENTOS MUSICAIS E ARTISTICOS</option>
					<option>MAQUINAS E EQUIPAMENTOS GRAFICOS</option>
					<option>BANDEIRAS FLAMULAS E INSIGNIAS</option>
					<option>MAQUINAS E EQUIPAMENTOS INDUSTRIAIS</option>
					<option>MAQUINAS E EQUIPAMENTOS ENERGETICOS</option>
					 -->
						</select>

						<!-- Sele��o de Colaborador -->
						<br>
						<p>Escolha o colaborador:</p>
						<select class="form-control" name="membroEquipe"
							required="required">
							<!-- Inclus�o de Op��es de Material de Consumo  -->
							<option></option>
							<option>ZippyRascal</option>
							<option>RuddyNapoleon</option>
							<option>KaputEgg</option>
							<option>DefiantDallas</option>
							<option>EarthyLeo</option>

						</select>

						<!-- Fim de Sele��o de Colaborador -->


						<!-- Bot�es -->
						<div align="left">
							<br>
							<button type="submit" class="btn btn-primary btn-lg">Atribuir
								Processo</button>
						</div>
						<!--  Fim de Bot�es -->
					</div>
				</form>
		</div>
		<br>
	</div>
</body>
</html>