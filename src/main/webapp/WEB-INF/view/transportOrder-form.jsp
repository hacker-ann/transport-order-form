<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!doctype html>
<html lang="en">

<head>
	
	<title>Transport Order Form Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<!-- Logout button -->	
<div class="container-fluid bg-info ">

<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
 <div style="margin-top: 10px" class="form-group row">
    <div class="col-sm-1 col-sm-offset-11 controls">
							
							
						<button type="submit" class="btn btn-danger">Logout</button>
		</div>					
		</div>				

	</form:form>
	</div>




<div class="container-fluid p-3 my-3 bg-info text-info text-center">

<h1>Transport Order Form</h1>

</div>
<div class="container-fluid p-3 my-3">
<div class="row">
  <div class="col-sm-6 text-center"><a href="#transport">01 Transportation</a></div>
  <div class="col-sm-6 text-center"><a href="#forwarder">02 Forwarder details</a></div>
</div>
<div class="row">
  <div class="col-sm-12"> <i>Fill out the form. Asterisk (*) means required.</i></div>
</div>
</div>
<div class="container-fluid p-3 my-3">

<form:form action="processForm" modelAttribute="transport">

<div class="row p-3 my-3 bg-info text-info text-center">
<h5> <a name="transport">01 Transportation </a></h5>
</div>

<div class="row">
<div class="col-sm-6 col-sm-offset-3">

  <div class="form-group">
      <label for="pickUp">Pick-up Location:</label>
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">  (*)  </span>

							<input type="text" class="form-control" id="pickUp" name="pickUpCompanyName" placeholder="Company Name" aria-describedby="basic-addon1">
	<form:errors path="pickUpCompanyName" class="text-danger"/>						 
						</div>
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">(*)</span>

							<input type="text" class="form-control" id="pickUp" name="pickUpStreet" placeholder="Street Address" aria-describedby="basic-addon1">
	<form:errors path="pickUpStreet" class="text-danger"/>						 
						</div>
	
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">(*)</span>				
							<input type="text" class="form-control" id="pickUp" name="pickUpCity" placeholder="City" aria-describedby="basic-addon1">		
	<input type="text" class="form-control" id="pickUp" name="pickUpPostalCode" placeholder="Postal Code" aria-describedby="basic-addon1">

	<form:errors path="pickUpCity" class="text-danger"/>						 
						</div>
	<div class="input-group">
	<span class="input-group-addon" id="basic-addon-country">Country</span>					
			<form:select class="form-control" path="pickUpCountry">
			<option selected>Choose</option>
				<form:options items="${transport.countryOptions}" aria-describedby="basic-addon-country"/>

			</form:select>					
	</div>	
	</div>
	
 <div class="form-group">
      <label for="puDate">Pick-up date:</label>
      <input type="date" class="form-control" id="puDate" name="pickUpDate" placeholder="yyyy-MM-dd">
      <form:errors path="pickUpDate" class="text-danger"/>
 </div>  
    		
 <div class="form-group">
      <label for="destination">Destination:</label>
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">  (*)  </span>

							<input type="text" class="form-control" id="destination" name="deliveryCompanyName" placeholder="Company Name" aria-describedby="basic-addon1">
	<form:errors path="deliveryCompanyName" class="text-danger"/>						 
						</div>
						
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">(*)</span>

							<input type="text" class="form-control" id="pickUp" name="deliveryStreet" placeholder="Street Address" aria-describedby="basic-addon1">
	<form:errors path="deliveryStreet" class="text-danger"/>						 
						</div>
			<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">(*)</span>				
							<input type="text" class="form-control" id="pickUp" name="deliveryCity" placeholder="City" aria-describedby="basic-addon1">		
	<input type="text" class="form-control" id="pickUp" name="deliveryPostalCode" placeholder="Postal Code" aria-describedby="basic-addon1">

	<form:errors path="deliveryCity" class="text-danger"/>						 
						</div>
						
					<div class="input-group">
	<span class="input-group-addon" id="basic-addon-country">Country</span>					
			<form:select class="form-control" path="deliveryCountry">
			<option selected>Choose</option>
				<form:options items="${transport.countryOptions}" aria-describedby="basic-addon-country"/>

			</form:select>					
	</div>
	</div>	
	<div class="form-group">
      <label for="dDate">Delivery date:</label>
      <input type="date" class="form-control" id="dDate" name="deliveryDate" placeholder="yyyy-MM-dd">
      <form:errors path="deliveryDate" class="text-danger"/>
 </div>				
	<div class="form-group">
      <label for="tDetails">Transport details:</label>
           </div>
<div class="form-inline">
  <div class="form-group">
    <label >Means of transport:</label>
  </div>
 
   <div class="form-group">
    <div class="checkbox">
  <label>
    <input type="checkbox" name="meansOfTransport"  value="standard">
   standard
  </label>
</div>
  </div>
     <div class="form-group">
    <div class="checkbox">
  <label>
    <input type="checkbox" name="meansOfTransport"  value=" joloda">
   joloda
  </label>
</div>
  </div>
     <div class="form-group">
    <div class="checkbox">
  <label>
    <input type="checkbox" name="meansOfTransport"  value="small vehicle">
   small vehicle
  </label>
</div>
  </div>
 <div class="form-inline">
  <div class="form-group">
    <label >Reel/pallet indicator:</label>
  </div>
 
   <div class="form-group">
    <div class="checkbox">
  <label>
    <input type="checkbox" name="reelOrPallet"  value="reels">
   reels
  </label>
</div>
  </div>
     <div class="form-group">
    <div class="checkbox">
  <label>
    <input type="checkbox" name="reelOrPallet"  value="pallets">
   pallets
  </label>
</div>
  </div>
  </div> 
  </div>  
	<div class="form-group">
      <label for="tons">Weight [To]:</label>
      <input type="text" class="form-control" id="tons" name="weight">
     
 </div>
	<div class="form-group">
      <label for="number">Number of reels/pallets:</label>
      <input type="text" class="form-control" id="number" name="numberOfReelOrPallet">
 
 </div>		
 	<div class="form-group">
      <label for="price">Freight Price:</label>
      <input type="text" class="form-control" id="price" name="freightPrice">

 </div>		
<div class="form-inline">
  <div class="form-group">
    <label >Currency:</label>
  </div>
 
   <div class="form-group">
    <div class="radio">
  <label>
    <input type="radio" name="currency"  value="PLN">
   PLN
  </label>
</div>
  </div>
     <div class="form-group">
    <div class="radio">
  <label>
    <input type="radio" name="currency"  value="EUR">
 EUR
  </label>
</div>
  </div>
       <div class="form-group">
    <div class="radio">
  <label>
    <input type="radio" name="currency"  value="CHF">
 CHF
  </label>
</div>
  </div>
       <div class="form-group">
    <div class="radio">
  <label>
    <input type="radio" name="currency"  value="GBP">
 GBP
  </label>
</div>
  </div>
   </div> 
  </div> 

</div>
<div class="col-sm-3"></div>
</div>	
<div class="row p-3 my-3 bg-info text-info text-center">
		<h5 align="center">
			<a name="forwarder">02 Forwarder details</a>
		</h5>
		</div>
		
		<div class="row">

<div class="col-sm-6 col-sm-offset-3">
<div class="form-group">
      <label for="company">Company Name</label>
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon2">  (*)  </span>

							<input type="text" class="form-control" id="Company Name" name="companyName" aria-describedby="basic-addon2">	
							<form:errors path="companyName" class="text-danger"/>				 
						</div>
						</div>	
						<div class="form-group">
      <label for="str">Street Address:</label>
      <input type="text" class="form-control" id="str" name="street">
 </div>	
<div class="form-group">
      <label for="ci">City:</label>
      <input type="text" class="form-control" id="ci" name="city">
 </div>	
<div class="form-group">
      <label for="pc">Postal Code:</label>
      <input type="text" class="form-control" id="pc" name="postalCode">
 </div>	
<div class="form-group">
      <label for="co">Country:</label>
      <input type="text" class="form-control" id="co" name="country">
 </div>
<div class="form-group">
      <label for="e-m">E-mail:</label>
		<div class="input-group">
							<span class="input-group-addon" id="basic-addon2">  (*)  </span>

							<input type="text" class="form-control" id="e-m" name="email" aria-describedby="basic-addon2">	
							<form:errors path="email" class="text-danger" />				 
						</div>
						
						<div class="form-group">
      <label for="nt">Additional remarks:</label>
      <textarea class="form-control" id="nt" name="note"></textarea>
 </div>
						</div>
 
 <button type="submit" class="btn btn-info">Submit</button>
 <button type="reset" class="btn btn-info">Reset</button>
		</div>
<div class="col-sm-3"></div>
</form:form>
	</div>

</body>
</html>