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
						placeholder="Insira o número do processo" required="required"
						maxlength="64"> <input type="hidden" name="linhaMaterial"
						value="Consumo">

				</div>


				<p>Escolha a eixo temático:</p>
				<select class="form-control" name="eixoTematico" required="required">
					<!-- Inclusão de Opções de Material de Consumo  -->
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

				<!-- Seleção de Colaborador -->
				<br>
				<p>Escolha o colaborador:</p>
				<select class="form-control" name="membroEquipe" required="required">
					<!-- Inclusão de Opções de Material de Consumo  -->
					<option>Erick Santos</option>
					<option>Iolanda Diaz</option>
					<option>Micheli Racioppi</option>
					<option>Zuleica Fonseca</option>
					<option>Outros não listados</option>

				</select>
				<!-- Fim de Seleção de Colaborador -->

				<!-- Botões -->
				<div align="left">
					<br>
					<button type="submit" class="btn btn-primary btn-lg">Atribuir
						Processo</button>
				</div>
				<!--  Fim de Botões -->
			</div>
		</form>



		<!-- Div de Material Permanente -->
		<form action="AdicionaProcesso" method="get">
			<div class=" col-md-12 div-permanente"
				style="padding: 20px; display: none" align="left">
				<div class="form-group">

					<input type="text" class="form-control" name="numeroProcesso"
						placeholder="Insira o número do processo" required="required"
						maxlength="64"> <input type="hidden" name="linhaMaterial"
						value="Permanente">

				</div>


				<p>Escolha a eixo temático:</p>
				<select class="form-control" name="eixoTematico" required="required">
					<!-- Inclusão de Opções Permanente  -->
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


					<!-- Não utilizados -->
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

				<!-- Seleção de Colaborador -->
				<br>
				<p>Escolha o colaborador:</p>
				<select class="form-control" name="membroEquipe" required="required">
					<!-- Inclusão de Opções de Material de Consumo  -->
					<option>Erick Santos</option>
					<option>Iolanda Diaz</option>
					<option>Micheli Racioppi</option>
					<option>Zuleica Fonseca</option>
					<option>Outros não listados</option>

				</select>

				<!-- Fim de Seleção de Colaborador -->


				<!-- Botões -->
				<div align="left">
					<br>
					<button type="submit" class="btn btn-primary btn-lg">Atribuir
						Processo</button>
				</div>
				<!--  Fim de Botões -->
			</div>
		</form>
		
		
		
	</div>
</body>
</html>