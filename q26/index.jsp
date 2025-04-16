<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz</title>
</head>
<body>
    <h2>Multiple Choice Quiz</h2>
    <form method="post" action="result.jsp">
        <%
            String sql = "SELECT * FROM questions";
            try (
                Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
                PreparedStatement stmt = conn.prepareStatement(sql);
                ResultSet res = stmt.executeQuery();
            ) {
                while (res.next()) {
                    int id = res.getInt("id");
                    String text = res.getString("question_text");

                    String a = res.getString("opt_a");
                    String b = res.getString("opt_b");
                    String c = res.getString("opt_c");
                    String d = res.getString("opt_d");

        %>
        <p><b><%= text %></b></p>
        <input type="radio" name="q<%= id %>" value="A" required> <%= a %><br>
        <input type="radio" name="q<%= id %>" value="B"> <%= b %><br>
        <input type="radio" name="q<%= id %>" value="C"> <%= c %><br>
        <input type="radio" name="q<%= id %>" value="D"> <%= d %><br><br>
        <%      }
            } catch (Exception e) {
                response.setStatus(500);
                out.println("Error: " + e);
            }
        %>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
