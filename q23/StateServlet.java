package q23;

import java.io.*;
import java.sql.*;
import javax.servlet.http.*;

public class StateServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test",
                "be2295", "gLbLyRtG");
                Statement stmt = conn.createStatement();
                ResultSet res = stmt.executeQuery("SELECT id, name FROM states_95")) {

            out.println("<option value=''>--Select State--</option>");
            while (res.next()) {
                int id = res.getInt("id");
                String name = res.getString("name");
                out.println("<option value=\"" + id + "\">" + name + "</option>");
            }
        } catch (Exception e) {
            out.println("Error: " + e);
        }
    }
}
