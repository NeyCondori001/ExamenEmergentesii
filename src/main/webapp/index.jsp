<%@page import="com.emergentes.modelo.Nota"%>
<%@page import="java.util.ArrayList"  %>
<%@page import="jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator"%>
<%

    if (session.getAttribute("listanota") == null) {
        ArrayList<Nota> lisaux = new ArrayList<Nota>();
        session.setAttribute("listanota", lisaux);
    }
    ArrayList<Nota> lista = (ArrayList<Nota>) session.getAttribute("listanota");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div style="text-align:center;">
        <table border="1" style="margin: 0 auto;">         
            <tr>
                <th><br>PRIMER PARCIAL TEM-742</br>
                <br>NOMBRE: NEYDA ALEJANDRA CONDORI MAMANI</br>                               
                <br>CARNET: 9901592 LP.</br></th>
                
            </tr>
        </table>
        </div>
        
        <h1><b>Registro de calificaciones</b></h1>
        <button onclick="window.location.href = 'MainServlet?op=nuevo'">Nuevo</button>
        <br><br>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>NOMBRE</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>NOTA</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Nota item : lista) {

                
            %>

            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getNombre() %></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getEf() %></td>
                <td><%= item.getNota() %></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick="return(confirm('Esta seguro de eliminar?'))" 
                       >Eliminar</a>
                </td>
            </tr>
            
            <%
                }
            }
            %>
        </table>
    </body>
</html>
