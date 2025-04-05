<html>
    <head>
        <title>URL rewriting</title>
    </head>
    <body>
        <%
            int current = 0;

            String param = request.getParameter("curr");
            if (param != null) {
                current = Integer.parseInt(param);
            }

            out.println(current);
        %>
        <br>
        <a href="q21-ur.jsp?curr=<%=current-1%>"><button>prev</button></a>
        <a href="q21-ur.jsp?curr=<%=current+1%>"><button>next</button></a>
    </body>
</html>