<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html lang="en">

<head>
<title>Transport Order Confirmation</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Reference Bootstrap files -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<!-- Logout button -->	
<div class="container-fluid ">

<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
 <div style="margin-top: 10px" class="form-group row">
    <div class="col-sm-1 col-sm-offset-11 controls">
							
							
						<button type="submit" class="btn btn-danger">Logout</button>
		</div>					
		</div>				

	</form:form>
	</div>
	<div class="container-fluid p-3 my-3">
		<div class="row">
			<div class="col-sm-6">
				<address>
					<strong>Sappi Europe (Polska) Sp. z o.o. </strong><br> ul.
					Klimeckiego 17<br> 30-705 Kraków<br> Polska
				</address>
			</div>
			<div class="col-sm-6 text-right">
				<strong>Date: <span id="date"> </span></strong>
				<script>
					var dt = new Date();
					document.getElementById("date").innerHTML = dt
							.toLocaleDateString();
				</script>
			</div>
		</div>
	</div>
	<div class="container-fluid p-3 my-3 bg-info text-info text-center">
		<h2>Transport order</h2>
	</div>
	<div class="container-fluid p-3 my-3 ">
		<br>
		<br> <strong>1. FORWARDER</strong><br>
		<br> ${transport.companyName} <br> ${transport.postalCode}
		${transport.city} <br> ${transport.country}<br>
		${transport.email}<br>

	</div>
	<div class="container-fluid p-3 my-3">
		<br>
		<br> <strong>2. TRANSPORT INFORMATION</strong><br>
		<br>
	</div>

	<div class="container-fluid p-3 my-3 bg-info">

		<div class="row">
			<div class="col-sm-3 ">
				<strong>Pick-up:</strong>
			</div>
			<div class="col-sm-2 ">
				<strong>Pick-up date</strong>
			</div>
			<div class="col-sm-3 col-sm-offset-2 ">
				<strong>Destination:</strong>
			</div>
			<div class="col-sm-2">
				<strong>Delivery date:</strong>
			</div>
		</div>
	</div>
	<div class="container-fluid p-3 my-3">
		<div class="row">
			<div class="col-sm-3">
				${transport.pickUpCompanyName}<br> ${transport.pickUpStreet}<br>
				${transport.pickUpPostalCode} ${transport.pickUpCity}<br>
				${transport.pickUpCountry}
			</div>
			<div class="col-sm-2">${transport.pickUpDate}</div>
			<div class="col-sm-3 col-sm-offset-2">
				${transport.deliveryCompanyName}<br>
				${transport.deliveryStreet}<br> ${transport.deliveryPostalCode}
				${transport.deliveryCity}<br> ${transport.deliveryCountry}
			</div>
			<div class="col-sm-2">${transport.deliveryDate}</div>
		</div>

	</div>
	<div class="container-fluid p-3 my-3">
		<br>
		<br> <strong>3. CARGO INFORMATION</strong><br>
		<br>
	</div>

	<div class="container-fluid p-3 my-3">
		Weight: ${transport.weight} To <br> Number of reels/pallets:
		${transport.numberOfReelOrPallet}<br>

		<ul style="list-style: none; padding-left: 0">
			<c:forEach var="temp" items="${transport.reelOrPallet}">

				<li>${temp}</li>

			</c:forEach>
		</ul>
	</div>
	<div class="container-fluid p-3 my-3">
		<br>
		<br> <strong>4. MEANS OF TRANSPORT</strong><br>
		<br>
	</div>
	<div class="container-fluid p-3 my-3">
		<ul style="list-style: none; padding-left: 0">
			<c:forEach var="temp" items="${transport.meansOfTransport}">

				<li>${temp}</li>

			</c:forEach>
		</ul>
	</div>

	<div class="container-fluid p-3 my-3">
		<br>
		<br> <strong>5. FREIGHT PRICE</strong><br>
		<br>
	</div>
	<div class="container-fluid p-3 my-3">${transport.freightPrice}
		${transport.currency}</div>

	<div class="container-fluid p-3 my-3">
		<br>
		<br> <strong>6. ADDITIONAL REMARKS:</strong><br>
		<br>
	</div>
	<div class="container-fluid p-3 my-3">${transport.note}</div>

</body>

</html>