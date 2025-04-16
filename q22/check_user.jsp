<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String sql = "SELECT 1 FROM users WHERE username = ?";
    try (
        Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
        PreparedStatement stmt = conn.prepareStatement(sql);
    ) {
        stmt.setString(1, username);
        
        try(ResultSet res = stmt.executeQuery()) {
            if (res.next()) {
                response.setStatus(409); // "Conflict" - username taken
            }
        }
    } catch (Exception e) {
        response.setStatus(500);
        out.println("Error: " + e);
    }
%>