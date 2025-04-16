package q25;

import java.io.InputStream;
import java.sql.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

public class QuestionImporter {
    private InputStream xmlFile;

    public QuestionImporter(InputStream xmlFile) {
        this.xmlFile = xmlFile;
    }

    public void insert() throws Exception {
        String sql =
                "INSERT INTO questions (question_text, opt_a, opt_b, opt_c, opt_d, answer) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://172.16.4.234:3306/test",
                "be2295", "gLbLyRtG"); PreparedStatement stmt = conn.prepareStatement(sql)) {
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document document = builder.parse(xmlFile);
            NodeList questions = document.getElementsByTagName("question");

            for (int i = 0; i < questions.getLength(); i++) {
                Element question = (Element) questions.item(i);
                NodeList options = question.getElementsByTagName("option");

                stmt.setString(1, question.getElementsByTagName("text").item(0).getTextContent());
                stmt.setString(2, options.item(0).getTextContent());
                stmt.setString(3, options.item(1).getTextContent());
                stmt.setString(4, options.item(2).getTextContent());
                stmt.setString(5, options.item(3).getTextContent());
                stmt.setString(6, question.getElementsByTagName("answer").item(0).getTextContent());

                stmt.executeUpdate();
            }
        }
    }
}
