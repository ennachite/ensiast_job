package ensiastjob.controller.student;

import ensiastjob.dao.student.EducationDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteEducation", value = "/profile/delete-education")
public class DeleteEducationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
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

}
