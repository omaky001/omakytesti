<%-- 
    Document   : laskeBMI
    Created on : 31-Aug-2018, 12:18:52
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo 2</title>
    </head>
    <body>
        
        <%
        double paino = Double.parseDouble(request.getParameter("paino"));
        double pituus = Double.parseDouble(request.getParameter("pituus"));
        
        double BMI = paino / (pituus * pituus);
        %>
        
        <h1>Painoindeksisi on: <%=BMI%>!</h1>
        
        <%
        if (BMI < 18.5) {
        %>
        
        <h2>Olet alipainoinen</h2>
        
        <%
        } else if (BMI >= 18.5 && BMI <= 25) {
        %>
        
        <h2>Olet normaalipainoinen</h2>
  
        <%
        } else if (BMI > 25) {
            out.println("<h2>Olet ylipainoinen</h2>");
        }
        %>
        
        <a href="/BMILaskuri/">Palaa etusivulle</a>
        
    </body>
</html>
