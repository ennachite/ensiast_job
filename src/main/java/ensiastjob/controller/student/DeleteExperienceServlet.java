package ensiastjob.controller.student;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteExperience", value = "/profile/delete-experience")
public class DeleteExperienceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
