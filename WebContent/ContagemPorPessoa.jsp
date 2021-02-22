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

<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>



<script type="text/javascript">
	function validaNumProcesso(v) {
		v.value = v.value.replace(/\D/g, "");
	}
</script>

<title>Contagem Por Pessoa</title>
</head>
<body>


	<div class="container pt-3 border border-light" align="left">
		<c:import url="Header.jsp"></c:import>


		<div class="container pt-3 border border-light" align="left">
			<h1 class="display-4">Contagem de Processos</h1>
			<br>

			<!-- Recebe o objeto processo de GerenciarProcessoServlet -->
			<c:set var="quantidade" value="${QTD}" />

			<!-- Cards QTD -->
			<div class="card-group" style="max-width: 200rem;">
				<div class="card border-secondary   mb-3">
					<div class="card-body">
						<p class="card-title" align="center">ZippyRascal</p>

						<h1 class="display-4" align="center">${QTD.membro1}</h1>
					</div>
				</div>

				<div class="card border-secondary  mb-3">
					<div class="card-body">
						<p class="card-title" align="center">RuddyNapoleon</p>
						<h1 class="display-4" align="center">${QTD.membro2}</h1>
					</div>
				</div>
				<div class="card border-secondary  mb-3">
					<div class="card-body">
						<p class="card-title" align="center">KaputEgg</p>
						<h1 class="display-4" align="center">${QTD.membro3}</h1>
					</div>
				</div>
				<div class="card border-secondary  mb-3">
					<div class="card-body">
						<p class="card-title" align="center">DefiantDallas</p>
						<h1 class="display-4" align="center">${QTD.membro4}</h1>
					</div>
				</div>
				<div class="card border-secondary  mb-3">
					<div class="card-body">
						<p>EarthyLeo</p>
						<h1 class="display-4" align="center">${QTD.membro5}</h1>

					</div>
				</div>

				<div class="card border-secondary  mb-3">

					<div class="card-body">
						<p class="card-title" align="center">
							<i class='far fa-clipboard' style='font-size: 20px'></i> Total
						</p>
						<h1 class="display-4" align="center">${QTD.total}</h1>

					</div>
				</div>

			</div>
		</div>
		<!-- Fim dos Cards -->


	</div>
	</div>

</body>
</html>