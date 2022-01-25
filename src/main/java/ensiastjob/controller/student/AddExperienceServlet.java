package ensiastjob.controller.student;

import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.model.StudentProfile;
import ensiastjob.model.student.Experience;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddExperience", value = "/profile/add-experience")
public class AddExperienceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("role").equals("STUDENT")) {
            StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

            String experienceTitle = request.getParameter("experience-title");
            String jobType = request.getParameter("job-type");
            String companyName = request.getParameter("company-name");
            String companyLocation = request.getParameter("company-location");
            String startDate = request.getParameter("start-date");
            String endDate = request.getParameter("end-date");
            String experienceDescription = request.getParameter("experience-description");
            if (request.getParameter("still-working") != null) {
                endDate = "now";
            }

            Experience experience = new Experience();
            ExperienceDaoImpl experienceDao = new ExperienceDaoImpl();

            int studentProfileId = studentProfile.getProfileId();

            experience.setProfileId(studentProfileId);
            experience.setExperienceTitle(experienceTitle);
            experience.setJobType(jobType);
            experience.setCompanyName(companyName);
            experience.setCompanyLocation(companyLocation);
            experience.setStartDate(startDate);
            experience.setEndDate(endDate);
            experience.setExperienceDescription(experienceDescription);

            experienceDao.addExperience(experience);

            request.setAttribute("experiences", experienceDao.getAllExperiencesByProfileId(studentProfileId));

            response.sendRedirect("/profile");
        }

    }
}
