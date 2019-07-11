<%-- 
    Document   : index
    Created on : Jul 7, 2019, 9:37:38 AM
    Author     : itmanager
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Concesionario Vehiculos</title>
 </head>

 <body>  
 <h1>Concesionario Vehículos</h1>
    |<a href="newCliente.jsp">New Cliente</a>
    |<a href="consesionarioServlet?action=list">List Clientes</a>
    |<a href="newVehiculo.jsp">New Vehiculo</a>
    |<a href="consesionarioServlet?action=listVehiculo">List Vehiculos</a>
    |<a href="newVenta.jsp">New Venta</a>
    |<a href="consesionarioServlet?action=listVenta">List Ventas</a>
 </body>     

    

</html>
