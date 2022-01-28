package ensiastjob.controller.student;

import ensiastjob.dao.student.ExperienceDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteExperience", value = "/profile/delete-experience")
public class DeleteExperienceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                ExperienceDaoImpl experienceDao = new ExperienceDaoImpl();

                int experienceIdDeleted = Integer.parseInt(request.getParameter("experienceIdDeleted"));

                experienceDao.deleteExperience(experienceIdDeleted);

                response.sendRedirect("/profile");
            }
        }
    }

}
