package ensiastjob.controller.student;

import ensiastjob.dao.student.CertificationDaoImpl;
import ensiastjob.model.StudentProfile;
import ensiastjob.model.student.Certification;
import ensiastjob.model.student.Experience;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCertification", value = "/profile/add-certification")
public class AddCertificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("role").equals("STUDENT")) {
            StudentProfile studentProfile = (StudentProfile) session.getAttribute("profile_student");

            String certificationName = request.getParameter("certification-name");
            String issuingOrganization = request.getParameter("issuing-organization");
            String issueDate = request.getParameter("issue-date");
            String expirationDate = request.getParameter("expiration-date");
            String credentialId = request.getParameter("credential-id");
            String credentialUrl = request.getParameter("credential-url");
            if (request.getParameter("dont-expire") != null) {
                expirationDate = null;
            }

            Certification certification = new Certification();
            CertificationDaoImpl certificationDao = new CertificationDaoImpl();

            int studentProfileId = studentProfile.getProfileId();

            certification.setProfileId(studentProfileId);
            certification.setCertificationName(certificationName);
            certification.setIssuingOrganization(issuingOrganization);
            certification.setIssueDate(issueDate);
            certification.setExpirationDate(expirationDate);
            certification.setCredentialId(credentialId);
            certification.setCredentialUrl(credentialUrl);

            certificationDao.addCertification(certification);

            request.setAttribute("certifications", certificationDao.getAllCertificationsByProfileId(studentProfileId));

            response.sendRedirect("/profile");
        }
    }
}
