<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
    <head>     
        <title>Application  - Metadata</title>
    </head>
    <body>
        
        <%
            String hostName;
            String serverName;
            Date Time;
            String Dtime;
            hostName = InetAddress.getLocalHost().getHostName()+" with IP="+InetAddress.getLocalHost().getHostAddress()+"with IP=" +InetAddress.getLocalHost().getHostAddress()+" ";
            Time = new Date();
            Dtime = Time.toString();
            %>
        
        <h2> Metadata  </h2>
        <hr>
        
         <div>
            <h4>Host Name & IP Address: <span><%=  hostName %></span></h4>
            <h4> Date & Time: <span> <%= Dtime %> </h4>
        </div>
        
        <h4>HTTP Request URL : <span><%= request.getRequestURL() %></span></h4>
        <h4>HTTP Request Method : <span><%= request.getMethod() %></span></h4>        
</body>
</html>
