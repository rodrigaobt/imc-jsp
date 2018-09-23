<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="assets/bootstrap.min.css">
		<link rel="stylesheet" href="assets/style.css">
		<title>imc</title>
	</head>
	<body>
		<div class="container-fluid" > 
	    <div class="col-md-3 col-md-offset-4">
	        <div class="panel panel-default">
	            <div class="panel-heading" align="center">
	            <h1>Calculo do IMC</h1>
	            </div>
	            <div class="panel-body">  
				<%
					Double peso = Double.parseDouble(request.getParameter("peso"));
					Double altura = Double.parseDouble(request.getParameter("altura"));
					String sexo = request.getParameter("sexo");
					Double imc = (peso / (altura / 100 * altura / 100));
					
					out.println("Seu IMC "+ imc);
				%>
				<br>
				<%
					if (sexo.equals("mas")) {
				        if (imc < 19.1) {
				            out.println("Voc� est� abaixo do peso");
				        } else if (imc >= 19.1 && imc < 25.8){
				            out.println("Seu peso est� normal");
				        } else if (imc >= 25.8 && imc < 27.3) {
				            out.println("Voc� est� marginalmente acima do peso");
				        } else if (imc >= 27.3 && imc < 32.3){
				            out.println("Voc� est� acima do peso");
				        } else {
				            out.println("Voc� est� obeso");
				        }
			   		} else {
				        if (imc < 20.7) {
				            out.println("Voc� est� abaixo do peso");
				        } else if (imc >= 20.7 && imc < 26.4){
				            out.println("Seu peso est� normal");
				        } else if (imc >= 26.4 && imc < 27.8) {
				            out.println("Voc� est� parcialmente acima do peso");
				        } else if (imc >= 27.8 && imc < 31.1){
				            out.println("Voc� est� acima do peso");
				        } else {
				            out.println("Voc� est� obeso");
				        }
			    }

				%>
				<br>
				<form action ="index.jsp">
					<input type="submit" value ="Voltar" /> 
				 </form>
				<br>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>