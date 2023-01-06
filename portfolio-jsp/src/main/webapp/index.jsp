<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.rtl.min.css"
	integrity="sha384-WJUUqfoMmnfkBLne5uxXj+na/c7sesSJ32gI7GfCk4zO4GthUKhSEGyvQ839BC51"
	crossorigin="anonymous">



<title>Teste JSP</title>

<style type="text/css">

form {
	position: absolute;
	top: 40%;
	left: 33%;
	right: 33%;
}

h5 {
	position: absolute;
	top: 30%;
	left: 33%;
}

.msg {
	position: absolute;
	top: 10%;
	left: 33%;
	font-size: 15px;
	color: #664d03;
	background-color: #fff3cd;
	border-color: #ffecb5;
}

 </style>

</head>
<body>

	<h5>Bem vindo ao portfólio - JSP</h5>



	<form action="ServletLogin" method="post" class="row g-3 needs-validation" novalidate>
		<input type="hidden" value="<%=request.getParameter("url")%>" name="url">
		
		
		<div class="mb-3">
		 <label class="form-label" for="login">Login</label> 
		 <input class="form-control" id="login" name="Login" type="text" required>
		 <div class="invalid-feedback">
		 Obrigatório
		 </div>
		 <div class="valid-feedback">
		 OK
		 </div>
		</div>	
			
		<div class="mb-3">	
		 <label class="form-label" for="senha">Senha</label> 
		 <input class="form-control" id="senha" name="Senha" type="password" required>
		 <div class="invalid-feedback">
		 Obrigatório
		 </div>
		 <div class="valid-feedback">
		 OK
		 </div>
		</div>
			
			
		 <input type="submit" value="Acessar" class="btn btn-primary">
		




	</form>

	<h5 class= "msg">${msg}</h5>


	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
		crossorigin="anonymous"></script>

<script type="text/javascript">

//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

</script>



</body>
</html>