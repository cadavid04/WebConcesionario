<%-- 
    Document   : clientes
    Created on : Jul 7, 2019, 10:26:12 AM
    Author     : itmanager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page = "index.jsp"></jsp:include>
        <h1>Listado de ventas</h1>
        <c:forEach var="a" items = "${Ventas}">
            |${a.factura}| |${a.fecha}| |${a.idCliente}||${a.valor}|
            <a onclick="return confirm('Esta seguro?')" href="consesionarioServlet?action=delete&identificacion=${a.factura}">Delete</a> 
            <a onclick="return confirm('Esta seguro?')" href="consesionarioServlet?action=findID&identificacion=${a.factura}">Buscar</a>  

            <hr/>
        </c:forEach>
            
    </body>
</html>