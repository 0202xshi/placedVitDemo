<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>welcome</title>
</head>

<body>
	<c:choose>	
			<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table >
						
						<tbody>
							<c:forEach var="user" items="${users}">
								<tr>
									<td>${user.selection}</td>
									<td>${user.typepack}</td>
									<td>${user.cgpa}</td>
									<td>${user.ctc}</td>
									<td>${user.advice}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
			
			
		</c:choose>	
	
	</body>
</html>
