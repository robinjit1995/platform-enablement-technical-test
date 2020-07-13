<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Health</title>
</head>
<body>
	<%
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("index.jsp");
	}
	%>
        <%@ page import="java.io.IOException,java.net.URL,java.net.HttpURLConnection" %>
        <%

        String op;
        URL url = new URL("http://google.com");
        HttpURLConnection connection = (HttpURLConnection)url.openConnection();
        connection.setRequestMethod("GET");
        connection.connect();

        int code = connection.getResponseCode();
        if (code==200)
        {
            op="OK";
        }
        else
        {
            op="NOK";
        }
            %>
	Welcome ${username}
        <h2>Find your application health status</h2>
        <hr>

         <div>
            <h4>Status Code: <span><%=  code %></span></h4>
            <h4>Status     : <span><%= op %></span></h4>
        </div>
        <hr>

 <a href=="Application metadata.jsp">Application Metadata</a>
</body>
</html>
