package ensiastjob.controller;

import ensiastjob.dao.*;
import ensiastjob.dao.student.CertificationDaoImpl;
import ensiastjob.dao.student.EducationDaoImpl;
import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.dao.student.LanguageDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Student;
import ensiastjob.model.StudentProfile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "OtherProfile", value = "/other-profile")
public class OtherProfileServlet extends HttpServlet {
    private static final String MEMBER = "member";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute(MEMBER) == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                int companyId = Integer.parseInt(request.getParameter("companyId"));

                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                Company company = companyDao.getCompanyById(companyId);

                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberByIdForGuest(company.getMemberId());

                OfferDaoImpl offerDao = new OfferDaoImpl();
                CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                int totalOffers = offerDao.getTotalOffersByCompany(companyId);
                int totalInternships = offerDao.getTotalInternshipsByCompany(companyId);
                int totalCandidacies = candidacyDao.totalCandidaciesByCompany(companyId);

                request.setAttribute("totalOffers", totalOffers);
                request.setAttribute("totalInternships", totalInternships);
                request.setAttribute("totalCandidacies", totalCandidacies);

                request.setAttribute(MEMBER, member);
                request.setAttribute("company", company);

                request.getRequestDispatcher("view/company/profileCompanyForGuest.jsp").forward(request, response);

            } else if (session.getAttribute("role").equals("COMPANY")) {
                int studentId = Integer.parseInt(request.getParameter("studentId"));

                StudentDaoImpl studentDao = new StudentDaoImpl();
                Student student = studentDao.getStudentById(studentId);

                MemberDaoImpl memberDao = new MemberDaoImpl();
                Member member = memberDao.getMemberByIdForGuest(student.getMemberId());

                StudentProfileDaoImpl studentProfileDao = new StudentProfileDaoImpl();
                StudentProfile studentProfile = studentProfileDao.getStudentProfileByStudentId(studentId);
                int studentProfileId = studentProfile.getProfileId();

                CertificationDaoImpl certificationDao = new CertificationDaoImpl();
                EducationDaoImpl educationDao = new EducationDaoImpl();
                ExperienceDaoImpl experienceDao = new ExperienceDaoImpl();
                LanguageDaoImpl languageDao = new LanguageDaoImpl();

                request.setAttribute(MEMBER, member);
                request.setAttribute("student", student);
                request.setAttribute("profile_student", studentProfile);
                request.setAttribute("certifications", certificationDao.getAllCertificationsByProfileId(studentProfileId));
                request.setAttribute("educations", educationDao.getAllEducationsByProfileId(studentProfileId));
                request.setAttribute("experiences", experienceDao.getAllExperiencesByProfileId(studentProfileId));
                request.setAttribute("languages", languageDao.getAllLanguagesByProfileId(studentProfileId));

                request.getRequestDispatcher("view/student/profileStudentForGuest.jsp").forward(request, response);
            }
        }
    }

}
