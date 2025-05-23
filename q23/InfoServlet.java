package q23;

import java.io.*;
import java.sql.*;
import javax.servlet.http.*;

public class InfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        String districtId = request.getParameter("districtId");
        PrintWriter out = response.getWriter();

        String sql = "SELECT info FROM districts_95 WHERE id = ?";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test",
                "be2295", "gLbLyRtG"); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, Integer.parseInt(districtId));

            try (ResultSet res = stmt.executeQuery()) {
                response.setContentType("text/html");

                if (res.next()) {
                    out.println("<b>District Info:</b><br>" + res.getString("info"));
                } else {
                    out.println("No information found.");
                }
            }

        } catch (Exception e) {
            response.setStatus(500);
            out.println("Error: " + e);
        }
    }
}
