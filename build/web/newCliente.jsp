<%-- 
    Document   : newCliente
    Created on : Jul 8, 2019, 2:32:40 PM
    Author     : itmanager
--%>

    <jsp:include page="index.jsp"></jsp:include>
        <h1>Nuevo Cliente</h1>
        <div class="container well">
            <div align="center">
            <form action="consesionarioServlet?action=insert" method="post">
                <table>
                    <tr>
                        <th><label><b>Nombre:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Name" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Apellido:</b></label></th>
                        <th>
                            <input type="apellido" placeholder="Enter Password" class="form-control" name="apellido" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Identificación:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter ID" class="form-control" name="identificacion" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Teléfono:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter Celphone" class="form-control" name="telefono" required=""/>
                        </th>
                    </tr>
                    <div class="break"></div>
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insert">
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