<%-- 
    Author     : VICTOR
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - VICTOR HUGO LIMACHI MAMANI</title>
    </head>
    <body>
        <h2>SEGUNDO PARCIAL TEM-742</h2>
        <h2>Nombre: Victor Hugo Limachi Mamani</h2>
        <h2>Carnet: 10094150 LP</h2>
        <br>
        <h1>Productos</h1>
        <a href="MainController?op=nuevo">Nuevo Producto</a>
        <br><br>
        <table border="3">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {
                    for (Producto item : lista) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainController?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId()%>"
                       onclick="return confirm('Esta seguro de eliminar el registro ?')">Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>

    </body>
</html>