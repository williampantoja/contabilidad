
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/listar.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTAR</title>
    </head>
    <body>
        
        <sql:setDataSource 
            var="connection"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/contabilidad"
            user="root" password=""
            />
        <sql:query var="result" dataSource="${connection}">
            SELECT number, name FROM accounts
        </sql:query>
            
            <form id="form" action="send.jsp" method="GET">
                <h1>INSTITUCION UNIVERSITARIA CESMAG</h1>
            <select id="uno" name="uno" >
                <c:forEach 
                    var="values" 
                    items="${result.rows}">

                       <option value="${values.number}">${values.name}</option>
                                          
                </c:forEach>
            </select>
                <br><br>
                <select id="dos" name="dos"></select>
                <input type="submit" value="listar">
            </form>

            
 </body>
</html>
