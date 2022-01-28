package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Member;
import ensiastjob.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentCandidacies", value = "/student-candidacies")
public class StudentCandidaciesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                Student student = (Student) session.getAttribute("student");

                CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                List<Candidacy> candidacies = candidacyDao.getCandidaciesByStudent(student.getStudentId());

                request.setAttribute("studentCandidacies", candidacies);
                request.getRequestDispatcher("view/student/jobCandidacies.jsp").forward(request, response);
            }
        }
    }

}
