<%@page import="java.sql.*"%>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    String sql = "INSERT INTO users (username, password) VALUES (?, ?)";
    try (
        Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
        PreparedStatement stmt = conn.prepareStatement(sql);
    ) {
        
        stmt.setString(1, user);
        stmt.setString(2, pass);

        stmt.executeUpdate();

        out.print("Account Created");
    } catch (Exception e) {
        response.setStatus(500);
        out.print("Error: " + e);
    }
%>