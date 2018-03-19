<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login</title>
	</head>
	<body>

			<table border="1" align="center" width="20%" cellpadding="3">
					<form:form id="loginForm" method="post" action="login" modelAttribute="loginBean">
			
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name :</td>
                        <td align="center"><input type="text" name="username" id="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td align="center"><input type="password" name="password" id="password" value="" /></td>
                    </tr>
                    <tr>
                        <td align="center"><input type="submit" id="Login" value="Login" /></td>
                        <td align="center"><input type="reset" id="Reset" value="Reset" /></td>
                    </tr>
                </tbody>
                		</form:form>
                
            </table>
              <h3 align="center" style ="color:red">${message}</h3>
	</body>
</html>