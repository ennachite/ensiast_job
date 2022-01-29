package ensiastjob.controller;

import ensiastjob.dao.student.CertificationDaoImpl;
import ensiastjob.dao.student.EducationDaoImpl;
import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.dao.student.LanguageDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.StudentProfile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                Company company = (Company) session.getAttribute("company");
                if (company.isApproved()) {
                    request.getRequestDispatcher("view/company/profileCompany.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/not-approved");
                }
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
            } else if (session.getAttribute("role").equals("ADMIN")) {
                request.getRequestDispatcher("view/admin/profileAdmin.jsp").forward(request, response);
            }
        }
    }

}
