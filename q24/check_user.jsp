<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    
    try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG")) {
        PreparedStatement stmt = conn.prepareStatement("SELECT 1 FROM users_95 WHERE username = ?");
        stmt.setString(1, username);
        
        ResultSet res = stmt.executeQuery();

        if (res.next()) {
            response.setStatus(409); // "Conflict" - username taken
        }
    } catch (Exception e) {
        response.setStatus(500);
        out.println("Error: " + e);
    }
%>