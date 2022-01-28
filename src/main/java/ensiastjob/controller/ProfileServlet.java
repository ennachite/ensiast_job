package ensiastjob.controller;

import ensiastjob.dao.student.*;
import ensiastjob.model.Member;
import ensiastjob.model.StudentProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileServlet", value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                request.getRequestDispatcher("view/company/profileCompany.jsp").forward(request, response);
            } else if (session.getAttribute("role").equals("STUDENT")) {
                CertificationDaoImpl certificationDao = new CertificationDaoImpl();
                EducationDaoImpl educationDao = new EducationDaoImpl();
                ExperienceDaoImpl experienceDao = new ExperienceDaoImpl();
                LanguageDaoImpl languageDao = new LanguageDaoImpl();

                StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

                int studentProfileId = studentProfile.getProfileId();

                request.setAttribute("certifications", certificationDao.getAllCertificationsByProfileId(studentProfileId));
                request.setAttribute("educations", educationDao.getAllEducationsByProfileId(studentProfileId));
                request.setAttribute("experiences", experienceDao.getAllExperiencesByProfileId(studentProfileId));
                request.setAttribute("languages", languageDao.getAllLanguagesByProfileId(studentProfileId));

                request.getRequestDispatcher("view/student/profileStudent.jsp").forward(request, response);
            }else if (session.getAttribute("role").equals("ADMIN")){
                request.getRequestDispatcher("view/admin/profileAdmin.jsp").forward(request, response);
            }
        }
    }

}
