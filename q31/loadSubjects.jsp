<%@ page import="java.sql.*, java.util.*" %>
<%
    String semester = request.getParameter("semester");
    List<String> subjects = new ArrayList<>();
    String sql = "SELECT DISTINCT subject FROM student_marks_95 WHERE semester=?";

    try (
        Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
        PreparedStatement stmt = conn.prepareStatement(sql);
    ){
        stmt.setInt(1, Integer.parseInt(semester));
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            subjects.add(rs.getString("subject"));
        }

    } catch (Exception e) {
        subjects.clear();
        subjects.add("Error: " + e);
    }

    for (String subject : subjects) {
        out.println("<option value='" + subject + "'>" + subject + "</option>");
    }
%>
