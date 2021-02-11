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
<title>Distribuição de Processos</title>
</head>
<body>
	<div class="container" align="left">

		<h1>Distribuição de Processos - SERLLC</h1>
		<br>

		<form action="AdicionaProcesso" method="get">

			<div class="form-group">

				<input type="text" class="form-control" name="numeroProcesso"
					placeholder="Insira o número do processo" required="required"
					maxlength="64">
			</div>
			<br>

			<div class="col-md-6" style="padding: 0px">
				<p>Escolha a linha de material:</p>
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


			<!-- Div de Material de Consumo -->

			<div class="col-md-12 div-consumo"
				style="padding: 20px; display: none" align="left">

				<p>Escolha a eixo temático:</p>
				<select class="form-control" name="eixoTematico" required="required">
					<option>GENERO DE ALIMENTAÇÃO</option>
					<option>MATERIAL EDUCATIVO E ESPORTIVO</option>
					<option>MATERIAL PARA FESTIVIDADES E HOMENAGENS</option>
					<option>MATERIAL DE EXPEDIENTE</option>
					<option>MATERIAL P/ PROCESSAMENTO DE DADOS</option>
					<option>MATERIAL P/ ACONDICIONAMENTO E EMBALAGENS</option>
					<option>MATERIAL DE CAMA, MESA E BANHO</option>
					<option>MATERIAL DE COPA E COZINHA</option>
					<option>MATERIAL DE LIMPEZA E PRODUTOS DE HIGIENIZAÇAO</option>
					<option>UNIFORMES, TECIDOS E AVIAMENTOS</option>
					<option>MATERIAL P/MANUTENÇÃO DE BENS IMÓVEIS</option>
					<option>MATERIAL P/ MANUTENÇAO DE BENS MÓVEIS</option>
					<option>MATERIAL ELÉTRICO E ELETRÔNICO</option>
					<option>MATERIAL DE MANOBRA DE PATRULHAMENTO</option>
					<option>MATERIAL DE PROTEÇÃO E SEGURANÇA</option>
					<option>MATERIAL P/ ÁUDIO, VÍDEO E FOTO</option>
					<option>MATERIAL PARA COMUNICAÇÕES</option>
					<option>SEMENTES, MUDAS DE PLANTAS E INSUMOS</option>
					<option>MATERIAL LABORATORIAL</option>
					<option>MATERIAL HOSPITALAR</option>
					<option>MATERIAL P/MANUTENÇÃO DE VEÍCULOS</option>
					<option>MATERIAL P/ UTILIZAÇÃO EM GRÁFICA</option>
					<option>FERRAMENTAS</option>
					<option>MATERIAL P/ REABILITAÇÃO PROFISSIONAL</option>
					<option>MATERIAL SINALIZAÇÃO VISUAL E OUTROS</option>
					<option>MATERIAL TÉCNICO PARA SELEÇÃO E TREINMENTO</option>
					<option>MATERIAL BIBLIOGRÁFICO</option>
					<option>AQUISIÇÃO DE SOFTWARES DE BASE</option>
					<option>BANDEIRAS, FLÂMULAS E INSÍGNIAS</option>
					<option>DISCOTECAS E FILMOTECAS NÃO IMOBILIZÁVEL</option>
					<option>MATERIAL PARA DIVULGAÇÃO</option>

				</select>
			</div>


			<!-- Div de Material Permanente -->

			<div class=" col-md-12 div-permanente"
				style="padding: 20px; display: none" align="left">
				<div class="form-group">
					<p>Escolha a eixo temático:</p>
					<select class="form-control" name="eixoTematico"
						required="required">
						<option>GENERO XXX</option>


					</select>
				</div>
			</div>

			<div  align="left">
				<br>
				<button type="submit" class="btn btn-primary btn-lg">Atribuir
					Processo</button>
			</div>
	</div>


	</form>


	</div>
</body>
</html>