<%-- 
    Document   : newCliente
    Created on : Jul 8, 2019, 2:32:40 PM
    Author     : itmanager
--%>

    <jsp:include page="index.jsp"></jsp:include>
        <h1>Nueva Venta</h1>
        <div class="container well">
            <div align="center">
            <form action="consesionarioServlet?action=insertVenta" method="post">
                <table>
                    <tr>
                        <th><label><b>Fecha:</b></label></th>
                        <th>
                            <input type="date" placeholder="Enter Fecha" class="form-control" name="fecha" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Factura:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter No Factura" class="form-control" name="factura" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>ID Cliente:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter ID cliente" class="form-control" name="id_Cliente" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th><label><b>Matricula:</b></label></th>
                        <th>
                            <input type="text" placeholder="Enter Matricula" class="form-control" name="matricula" required=""/>
                        </th>
                    </tr>
                     <tr>
                        <th><label><b>Valor:</b></label></th>
                        <th>
                            <input type="number" placeholder="Enter Valor" class="form-control" name="valor" required=""/>
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