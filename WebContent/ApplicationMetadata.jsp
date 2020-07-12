<!DOCTYPE html>
<html>
    <head>
                <title>Application Health</title>
    </head>
    <body>

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

        <h2>Find your application health status</h2>
        <hr>

         <div>
            <h4>Status Code: <span><%=  code %></span></h4>
            <h4>Status     : <span><%= op %></span></h4>
        </div>

</body>
</html>
