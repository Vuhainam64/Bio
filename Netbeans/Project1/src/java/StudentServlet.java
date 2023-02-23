
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public StudentServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int numStudents = Integer.parseInt(request.getParameter("numStudents"));
        List<Student> students = generateRandomStudents(numStudents);
        request.setAttribute("students", students);
        request.getRequestDispatcher("website.jsp").forward(request, response);
    }

    private List<Student> generateRandomStudents(int numStudents) {
        List<Student> students = new ArrayList<>();
        Random rand = new Random();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        for (int i = 1; i <= numStudents; i++) {
            String firstName = "Student" + i;
            String lastName = "Lastname" + i;
            String id = String.format("%04d", i);
            LocalDate dateOfBirth = LocalDate.of(rand.nextInt(20) + 1980, rand.nextInt(12) + 1, rand.nextInt(28) + 1);
            Gender gender = rand.nextBoolean() ? Gender.MALE : Gender.FEMALE;
            students.add(new Student(id, firstName, lastName, dateOfBirth.format(formatter), gender));
        }

        return students;
    }
}
