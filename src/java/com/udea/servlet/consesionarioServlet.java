/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VehiculosFacadeLocal;
import com.udea.ejb.VentasFacadeLocal;
import com.udea.ejb.ClientesFacadeLocal;
import com.udea.entity.Clientes;
import com.udea.entity.Vehiculos;
import com.udea.entity.Ventas;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author itmanager
 */
public class consesionarioServlet extends HttpServlet {

    @EJB
    private ClientesFacadeLocal clientesFacade;
    @EJB
    private VentasFacadeLocal ventasFacade;
    @EJB
    private VehiculosFacadeLocal vehiculosFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            String url = "index.jsp";
            if (null != action) switch (action) {
                case "list":
                    List<Clientes> findAll = clientesFacade.findAll();
                    request.getSession().setAttribute("Clientes", findAll);
                    url = "clientes.jsp";
                    break;
                    
                case "listVenta":
                    List<Ventas> findAllVentas = ventasFacade.findAll();
                    request.getSession().setAttribute("Ventas", findAllVentas);
                    url = "ventas.jsp";
                    break;
                    
                case "listVehiculo":
                    List<Vehiculos> findAllVehiculos = vehiculosFacade.findAll();
                    request.getSession().setAttribute("Vehiculos", findAllVehiculos);
                    url = "vehiculos.jsp";
                    break;
                    
                case "findID":{
                    String identificacion = request.getParameter("identificacion");
                    Clientes cl = clientesFacade.find(Integer.valueOf(identificacion));
                    request.getSession().setAttribute("Clientes", cl);
                    clientesFacade.find(cl);
                    url = "clientes.jsp";
                        break;
                    }
                 
                case "insert":{
                    Clientes a = new Clientes();
                    a.setNombre(request.getParameter("nombre"));
                    a.setApellido(request.getParameter("apellido"));
                    a.setTelefono(Integer.parseInt(request.getParameter("telefono")));
                    a.setIdentificacion(Integer.parseInt(request.getParameter("identificacion")));
                    clientesFacade.create(a);
                    url = "consesionarioServlet?action=list";
                        break;
                    }
                
                case "insertVehiculo":{
                    Vehiculos v = new Vehiculos();
                    v.setId(Integer.parseInt(request.getParameter("idVehiculo")));
                    v.setMarca(request.getParameter("marca"));
                    v.setMatricula(request.getParameter("matricula"));
                    v.setModelo(request.getParameter("modelo"));
                    v.setColor(request.getParameter("color"));
                    v.setFoto(request.getParameter("modelo"));
                    vehiculosFacade.create(v);
                    url = "consesionarioServlet?action=listVehiculo";
                        break;
                    }
                case "insertVenta":{
                    Ventas ve = new Ventas();
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    java.util.Date date = sdf.parse(request.getParameter("fecha"));
                    ve.setFactura(Integer.parseInt(request.getParameter("factura")));
                    ve.setFecha(date);
                    ve.setIdCliente(Integer.parseInt(request.getParameter("id_Cliente")));
                    ve.setMatricula(request.getParameter("matricula"));
                    ve.setValor(Integer.parseInt(request.getParameter("valor")));
                    
                    ventasFacade.create(ve);
                    url = "consesionarioServlet?action=listVenta";
                        break;
                    }
                
                case "delete":{
                    String identificacion = request.getParameter("identificacion");
                    Clientes v = clientesFacade.find(Integer.valueOf(identificacion));
                    clientesFacade.remove(v);
                    url = "consesionarioServlet?action=list";
                        break;
                    }
                case "deleteVenta":{
                    String factura = request.getParameter("factura");
                    Ventas ven = ventasFacade.find(Integer.valueOf(factura));
                    ventasFacade.remove(ven);
                    url = "consesionarioServlet?action=listVenta";
                        break;
                    }
                case "deleteVehiculo":{
                    String id= request.getParameter("id");
                    Vehiculos veh = vehiculosFacade.find(Integer.valueOf(id));
                    vehiculosFacade.remove(veh);
                    url = "consesionarioServlet?action=listVehiculo";
                        break;
                    }
              
            }
            response.sendRedirect(url);
        } finally {
            out.close();
        }
    }
   // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(consesionarioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(consesionarioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}