package q23;

import javax.servlet.http.*;
import java.sql.*;
import java.io.*;

public class DistrictServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String stateId = request.getParameter("stateId");
        PrintWriter out = response.getWriter();
        String sql = "SELECT id, name FROM districts_95 WHERE state_id = ?";

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test",
                "be2295", "gLbLyRtG"); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, Integer.parseInt(stateId));

            try (ResultSet res = stmt.executeQuery()) {
                response.setContentType("text/html");

                out.println("<option value=''>--Select District--</option>");
                while (res.next()) {
                    out.println("<option value='" + res.getInt("id") + "'>" + res.getString("name")
                            + "</option>");
                }
            }
        } catch (Exception e) {
            response.setStatus(500);
            out.println("Error: " + e);
        }
    }
}
