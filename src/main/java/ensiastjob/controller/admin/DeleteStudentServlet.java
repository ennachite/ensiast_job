package ensiastjob.controller.admin;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.dao.StudentDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteStudent", value = "/delete-student")
public class DeleteStudentServlet extends HttpServlet {
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
                int studentId = Integer.parseInt(request.getParameter("studentId"));
                StudentDaoImpl studentDao = new StudentDaoImpl();
                int memberId = studentDao.getStudentById(studentId).getMemberId();

                MemberDaoImpl memberDao = new MemberDaoImpl();
                memberDao.deleteMember(memberId);

                response.sendRedirect("/students-list");
            }
        }
    }
}
