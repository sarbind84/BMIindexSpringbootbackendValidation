<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<spring:url value="/resources/style.css" var="styleCss" />
<link href="${styleCss}" rel="stylesheet" />

<style type="text/css">
.error {
	color: red;
}
</style>

</head>


<body>
<h1>Welcome to BMI Calculator</h1>


<div id="btn1">
<div id="btn">

<a href="/bmi-calculator/user/userForm">
<button class="button button1">
Click here to go to user form
</button></a>

</div></div>
</body></html>