package q27;

import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/plain");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String oldPass = request.getParameter("oldPass");
        String newPass = request.getParameter("newPass");

        String sql = "SELECT * FROM users_95 WHERE username=? AND password=?";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test",
                "be2295", "gLbLyRtG"); PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, username);
            stmt.setString(2, oldPass);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                String updateSQL = "UPDATE users_95 SET password=? WHERE username=?";
                PreparedStatement updateStmt = conn.prepareStatement(updateSQL);
                updateStmt.setString(1, newPass);
                updateStmt.setString(2, username);
                int updated = updateStmt.executeUpdate();

                if (updated > 0) {
                    out.println("Password changed successfully.");
                } else {
                    out.println("Failed to update password.");
                }
            } else {
                out.println("Old username or password is incorrect.");
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
}
