package ensiastjob.controller.admin;

import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentsList", value = "/students-list")
public class StudentsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("ADMIN")) {
                StudentDaoImpl studentDao = new StudentDaoImpl();
                List<Student> students = studentDao.getAllStudents();
                request.setAttribute("students", students);
                request.getRequestDispatcher("/view/admin/studentsList.jsp").forward(request, response);
            }
        }
    }

}
