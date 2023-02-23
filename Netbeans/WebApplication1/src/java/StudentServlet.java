import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int numStudents = Integer.parseInt(request.getParameter("numStudents"));
        
        List<Student> students = new ArrayList<>();
        for (int i = 0; i < numStudents; i++) {
            int id = i + 1;
            String name = "Student " + id;
            boolean gender = (id % 2 == 0);
            Date dob = new Date(System.currentTimeMillis() - id * 365L * 24 * 60 * 60 * 1000);
            students.add(new Student(id, name, gender, dob));
        }
        
        request.setAttribute("students", students);
        request.getRequestDispatcher("student.jsp").forward(request, response);
    }
}
