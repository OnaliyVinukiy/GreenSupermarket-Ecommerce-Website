<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>


<jsp:include page="headerLinks.jsp" />
<link rel="stylesheet" href="css/styleTeam.css">


</style>

</head>
<body>


<jsp:include page="header.jsp" />
<h1 style="margin-top:90px;"align="center">Our Team</h1>
<%@ include file="teams.jsp"%>

</body>
</html>