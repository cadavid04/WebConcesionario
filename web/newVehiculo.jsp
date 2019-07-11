<%-- 
    Document   : newCliente
    Created on : Jul 8, 2019, 2:32:40 PM
    Author     : itmanager
--%>

    <jsp:include page="index.jsp"></jsp:include>
        <h1>Nuevo Vehiculo</h1>
        <div class="container well">
            <div align="center">
            <form action="consesionarioServlet?action=insertVehiculo" method="post">
                <table>
                    <tr>
                        <th><label><b>id Vehiculo:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter ID Vehiculo" class="form-control" name="idVehiculo" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Marca:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Marca" class="form-control" name="marca" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Modelo:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Modelo" class="form-control" name="modelo" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Matricula:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Matricula" class="form-control" name="matricula" required=""/>
                        </th>
                    </tr>
                      <tr>
                        <th><label><b>Color:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Color" class="form-control" name="color" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="insert">
                            <span class="glyphicon glyphicon-ok-sign"></span>
                            <input class="btn icon-btn btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>    
        </form> 
            </div>
            <br>
        </div>