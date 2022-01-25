package ensiastjob.controller.student;

import ensiastjob.dao.student.EducationDaoImpl;
import ensiastjob.model.StudentProfile;
import ensiastjob.model.student.Education;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddEducation", value = "/profile/add-education")
public class AddEducationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("role").equals("STUDENT")) {
            StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

            String schoolName = request.getParameter("school-name");
            String degree = request.getParameter("degree");
            String fieldStudies = request.getParameter("field-studies");
            String startDate = request.getParameter("start-date");
            String endDate = request.getParameter("end-date");
            String educationDescription = request.getParameter("education-description");

            Education education = new Education();
            EducationDaoImpl educationDao = new EducationDaoImpl();

            int studentProfileId = studentProfile.getProfileId();

            education.setProfileId(studentProfileId);
            education.setSchoolName(schoolName);
            education.setDegree(degree);
            education.setFieldStudies(fieldStudies);
            education.setStartDate(startDate);
            education.setEndDate(endDate);
            education.setEductionDescription(educationDescription);

            educationDao.addEducation(education);

            request.setAttribute("educations", educationDao.getAllEducationsByProfileId(studentProfileId));

            response.sendRedirect("/profile");
        }
    }
}
