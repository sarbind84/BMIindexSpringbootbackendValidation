<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored = "false" %>
<html>
<head>


<link rel="stylesheet" href="${pageContext.request.contextPath}/webapp/resources/style.css" />
</head>

<body>

<h1>BMI RESULT !</h1>

<br><br>


<div id="field"> 


	<div id="f1">First Name :</div>
	<div id="f3">${user.firstName}</div>
	<div style="clear:both"></div>
	
	<div id="f1">Last Name: </div>
	<div id="f3">${user.lastName}</div>
	<div style="clear:both"></div>
	
	<div id="f1">Height: </div>
	<div id="f3">${user.height} cm</div>
	<div style="clear:both"></div>
	
	
	<div id="f1">Weight: </div>
	<div id="f3">${user.weight} kg
	</div>
	<div style="clear:both"></div>

	<div id="f1">BMI: </div>
	<div id="f3">${user.ratio}
	</div>
	<div style="clear:both"></div>
	
	<div id="f1">Result BMI: </div>
	<div id="f3">${user.result}
	</div>
	<div style="clear:both"></div>
	



</body>



</html>