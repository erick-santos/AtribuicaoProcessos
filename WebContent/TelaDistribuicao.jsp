<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<title>Distribui��o de Processos</title>
</head>
<body>
	<div class="container" align="left">

		<h1>Distribui��o de Processos - SERLLC</h1>
		<br>



		<!-- Construcao dos Radio Buttons  -->
		<div>

			<p>Escolha a linha de material:</p>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="linhaMaterial"
					id="linhaMaterial1" value="Consumo"> <label
					class="form-check-label" for="exampleRadios1"> Consumo </label>
			</div>

			<div class="form-check">
				<input class="form-check-input" type="radio" name="linhaMaterial"
					id="linhaMaterial2" value="Permanente"> <label
					class="form-check-label" for="exampleRadios2"> Permanente </label>
			</div>

		</div>

		<!-- Manipular divs conforme radio button escolhido -->

		<!-- Div de Material de Consumo -->
		<form action="AdicionaProcesso" method="get">

			<div class="col-md-12 div-consumo"
				style="padding: 20px; display: none" align="left">
				<div class="form-group">

					<input type="text" class="form-control" name="numeroProcesso"
						placeholder="Insira o n�mero do processo" required="required"
						maxlength="64"> <input type="hidden" name="linhaMaterial"
						value="Consumo">

				</div>


				<p>Escolha a eixo tem�tico:</p>
				<select class="form-control" name="eixoTematico" required="required">
					<!-- Inclus�o de Op��es de Material de Consumo  -->
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
				<select class="form-control" name="membroEquipe" required="required">
					<!-- Inclus�o de Op��es de Material de Consumo  -->
					<option>Erick Santos</option>
					<option>Iolanda Diaz</option>
					<option>Micheli Racioppi</option>
					<option>Zuleica Fonseca</option>
					<option>Outros n�o listados</option>

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
		<form action="AdicionaProcesso" method="get">
			<div class=" col-md-12 div-permanente"
				style="padding: 20px; display: none" align="left">
				<div class="form-group">

					<input type="text" class="form-control" name="numeroProcesso"
						placeholder="Insira o n�mero do processo" required="required"
						maxlength="64"> <input type="hidden" name="linhaMaterial"
						value="Permanente">

				</div>


				<p>Escolha a eixo tem�tico:</p>
				<select class="form-control" name="eixoTematico" required="required">
					<!-- Inclus�o de Op��es Permanente  -->
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
				<select class="form-control" name="membroEquipe" required="required">
					<!-- Inclus�o de Op��es de Material de Consumo  -->
					<option>Erick Santos</option>
					<option>Iolanda Diaz</option>
					<option>Micheli Racioppi</option>
					<option>Zuleica Fonseca</option>
					<option>Outros n�o listados</option>

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
</body>
</html>