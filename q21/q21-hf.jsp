<html>
    <head>
        <title>Hidden field</title>
    </head>
    <body>
        <% 
            int current=0;
            
            String last = request.getParameter("last");
            String button = request.getParameter("button");
            
            if (button != null) {
                if (button.equals("next")) { 
                    current = Integer.parseInt(last) + 1;
                } else if (button.equals("prev")) {
                    current = Integer.parseInt(last) - 1; 
                }
            }

            out.println(current); 
        %>
        <br>
        <form name="Form" method="post">
            <input type="hidden" name="last" value="<%=current%>">
            <input type="submit" name="button" value="prev">
            <input type="submit" name="button" value="next">
        </form>
    </body>
</html>