package ensiastjob.controller.student;

import ensiastjob.dao.student.EducationDaoImpl;
import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteEducation", value = "/profile/delete-education")
public class DeleteEducationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                EducationDaoImpl educationDao = new EducationDaoImpl();

                int educationIdDeleted = Integer.parseInt(request.getParameter("educationIdDeleted"));

                educationDao.deleteEducation(educationIdDeleted);

                response.sendRedirect("/profile");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
