<!DOCTYPE html>
<html>
<head>
    <title>Check Student Marks</title>
    <script>
        function loadSubjects() {
            var sem = document.getElementById("semester").value;
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("subject").innerHTML = xhr.responseText;
                }
            };
            xhr.open("GET", "loadSubjects.jsp?semester=" + sem, true);
            xhr.send();
        }
    </script>
</head>
<body>
    <h2>Search Marks</h2>
    <form method="get" action="result.jsp">
        <label>Roll Number:</label><br>
        <input type="text" name="roll" required><br><br>

        <label>Semester:</label><br>
        <select name="semester" id="semester" onchange="loadSubjects()" required>
            <option value="">--Select--</option>
            <% for (int i = 1; i <= 8; i++) { %>
                <option value="<%= i %>">Semester <%= i %></option>
            <% } %>
        </select><br><br>

        <label>Subject:</label><br>
        <select name="subject" id="subject" required>
            <option value="">--Select Semester First--</option>
        </select><br><br>

        <input type="submit" value="Get Marks">
    </form>
</body>
</html>
