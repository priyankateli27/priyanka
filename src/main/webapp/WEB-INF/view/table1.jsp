<%@page import="com.niit.work.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! Pojo p = new Pojo(); %>
	<%
	String name=request.getParameter("userName");
	String id = request.getParameter("userID");
	String address = request.getParameter("userAddress");
	int mobno =Integer.parseInt(request.getParameter("userMob_No"));
	  p.setId(id);
	p.setName(name);
	p.setAddress(address);
	p.setMob_No(mobno);
		%>
		
<div class="container">
  <h2>NIIT STUDENTS</h2>
  <p>Student Record:</p>            
  <table class="table" border=1 align="center">
    <thead>
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>ADDRESS</th>
        <th>MOBILE NO.</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=p.getId() %></td>
        <td><%=p.getName() %></td>
        <td><%=p.getAddress() %></td>
        <td><%=p.getMob_No()%></td>
      </tr>
      
    </tbody>
  </table>
</div>


	  

</body>
</html>