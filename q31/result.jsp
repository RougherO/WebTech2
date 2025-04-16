<%@ page import="java.sql.*" %>
<%
    String roll = request.getParameter("roll");
    String subject = request.getParameter("subject");
    String semester = request.getParameter("semester");

    String sql = "SELECT marks FROM student_marks_95 WHERE roll_number=? AND semester=? AND subject=?";
    try (
        Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
        PreparedStatement stmt = conn.prepareStatement(sql);
    ) {
        stmt.setString(1, roll);
        stmt.setInt(2, Integer.parseInt(semester));
        stmt.setString(3, subject);

        ResultSet rs = stmt.executeQuery();

        if (rs.next()) {
            int marks = rs.getInt("marks");
            out.println("<h2>Result:</h2>");
            out.println("Roll: " + roll + "<br>");
            out.println("Semester: " + semester + "<br>");
            out.println("Subject: " + subject + "<br>");
            out.println("Marks: <b>" + marks + "</b>");
        } else {
            out.println("<p style='color:red;'>No record found!</p>");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
