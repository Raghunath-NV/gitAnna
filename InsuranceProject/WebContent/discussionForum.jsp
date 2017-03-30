<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<%@include file="header.jsp" %>
<center>
<br><h3>Messages</h3><br>
 <div style="height:450px; width: 90%; overflow:scroll" id="scrollable">
 
 <%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
         <cc:forEach var="m" items="${messagesList}">
		<tr>
 		
<c:choose>
  <c:when test="${m.role == 'customer'}">
    <div style= "background-color: grey"; >
  </c:when>
  <c:otherwise>
    <div style= "background-color: powderblue"; >
  </c:otherwise>    
</c:choose>     
		<br>
						<td> <cc:out value='${m.message}'/></td><br>
						<td>From :  <cc:out value='${m.email}'/></td>
						<td>    Date : <cc:out value='${m.date}'/></td>
					</tr>	
						<br>
						<hr>
						</div>
		</tr>
         </cc:forEach>
 </div>



<form action="user" method="post">
<input type="hidden" name="action" value="sendMessage" />

<h1>Message : </h1><input type="text" name="message" style="width:750px;height:50px" required/>

<input type="submit"  value="Send Message"/>
</form>


</center>


  