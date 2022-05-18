<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored = "false" %>
<html>
<head>

 

<style type="text/css">
.error {
	color: red;
}
</style>


</head>

<body>
	
	<h1>Calculator BMI</h1>


	
	<div id="field"> 
	<form:form action="bmiResult" modelAttribute="user">
	
	
	<div id="f1">First Name :</div>
	<div id="f2"><form:input path="firstName" /></div>
	<form:errors path="firstName" cssClass="error"></form:errors>
	<div style="clear:both"></div>
	
	<div id="f1">Last Name: </div>
	<div id="f2"><form:input path="lastName" /></div>
	<form:errors path="lastName" cssClass="error"></form:errors>
	<div style="clear:both"></div>
	
	<div id="f1">Height(cm): </div>
	<div id="f2"><form:input path="height" /><form:errors path="height" cssClass="error">  </form:errors></div>
	<div style="clear:both"></div>
	
	
	<div id="f1">Weight(kg): </div>
	<div id="f2"><form:input path="weight" /><form:errors path="weight" cssClass="error">  </form:errors>
	</div>
	<div style="clear:both"></div>
	<input type="submit" value="Click here to calculate" />
	</form:form>
	</div>



</body>



</html>