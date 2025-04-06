package q25;

import java.io.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@MultipartConfig
public class UploadServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (InputStream input = request.getPart("xmlfile").getInputStream()) {
            QuestionImporter importer = new QuestionImporter(input);
            importer.insert();

            out.println("Questions inserted successfully!");
        } catch (Exception e) {
            out.println("Error: " + e);
        }
    }
}