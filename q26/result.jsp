<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>
</head>
<body>
    <h2>Your Quiz Result</h2>
    <%
        int total = 0;
        int correct = 0;

        String sql = "SELECT id, answer FROM questions";
        try (
            Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test", "be2295", "gLbLyRtG");
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet res = stmt.executeQuery();
        ) {
            while (res.next()) {
                total++;
                
                int id = res.getInt("id");
                String correctAns = res.getString("answer");
                String userAns = request.getParameter("q" + id);

                if (userAns != null && userAns.equalsIgnoreCase(correctAns)) {
                    correct++;
                }
            }
        } catch (Exception e) {
            response.setStatus(500);
            out.println("Error: " + e);
        }
    %>

    <p>You answered <b><%= correct %></b> out of <b><%= total %></b> correctly!</p>
</body>
</html>
