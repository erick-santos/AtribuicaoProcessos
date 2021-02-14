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
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
</head>

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
<link rel="stylesheet"
	href="../resources/css_proprio/datatables_customizado.css">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="../resources/js_proprio/datatables_functions.js">
	
</script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>

<script src="https://code.highcharts.com/highcharts.js"></script>


<script>
	//Create DataTable
	$(document).ready(function() {
		$('#idTabelaProcessos').DataTable();
	});
</script>



<title>Lista de Processos</title>
</head>

<body>

	<div class="container pt-3">

		<h1>Lista de Processos</h1>
		<br>

		<table id="idTabelaProcessos" class="table-responsive-lg table-striped">
			<thead align="left">
				<tr>
					<th>Número do Processo</th>
					<th>Linha de Material</th>
					<th>Eixo Tematico</th>
					<th>Colaborador</th>
					<th>Fase</th>
					<th>Data da Operação</th>
					<th>Editar</th>
					<th>Apagar</th>

				</tr>
			</thead>
			<c:forEach items="${lista}" var="processo">
				<tr align="left">
					<td>${processo.numeroProcesso}</td>
					<td>${processo.linhaMaterial}</td>
					<td>${processo.eixoTematico}</td>
					<td>${processo.membroEquipe}</td>
					<td></td>
					<!-- Formatação de Data de Operação-->
					<fmt:parseDate var="dataOperacao" value="${processo.ld}"
						pattern="yyyy-MM-dd" timeZone="GMT-3"></fmt:parseDate>
					<fmt:formatDate type="date" value="${dataOperacao}"
						var="dataOperacaoFormat" pattern="dd/MM/yyyy" />
					<td>${dataOperacaoFormat}</td>
					<td align="center"><a
						href="GerenciarProcesso?idProcesso=${processo.id}"><i
							class="fas fa-edit"></i></a></td>
					<td align="center"><a
						href="ApagarProcessos?idProcesso=${processo.id}"><i
							class="far fa-trash-alt"></i></a></td>
				</tr>

			</c:forEach>
		</table>


		<br> <br>
		<div align="right">
			<a href="TelaDistribuicao.jsp" class="btn btn-primary" role="button"
				aria-disabled="true">Voltar a página inicial</a>
		</div>
	</div>
	
</body>
</html>