<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_name = request.getParameter("userNAME");
		String u_email = request.getParameter("userMAIL");
		
		String sql = "INSERT INTO members(id,pw,username,email) VALUES ('"+u_id+"','"+u_pw+"','"+u_name+"','"+u_email+"')";
		
		Statement stmt = null;
		
		stmt = conn.createStatement();
		
		int count = stmt.executeUpdate(sql);
		
		if(count == 1){
			response.sendRedirect("signupSuccess.jsp");
		}
		else{
			response.sendRedirect("signup.jsp");
		}
		
		stmt.close();	// try-catch 사용 권장
		conn.close();
		
		
	%>
</body>
</html>