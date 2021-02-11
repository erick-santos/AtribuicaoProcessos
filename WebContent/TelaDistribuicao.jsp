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

		<form action="AdicionaProcesso" method="get">

			<div class="form-group">

				<input type="text" class="form-control" name="numeroProcesso"
					placeholder="Insira o n�mero do processo" required="required"
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

				<p>Escolha a eixo tem�tico:</p>
				<select class="form-control" name="eixoTematico" required="required">
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
			</div>


			<!-- Div de Material Permanente -->

			<div class=" col-md-12 div-permanente"
				style="padding: 20px; display: none" align="left">
				<div class="form-group">
					<p>Escolha a eixo tem�tico:</p>
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