package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.extra.HomePath;
import ensiastjob.model.Candidacy;
import ensiastjob.model.CandidacyStatus;
import ensiastjob.model.Offer;
import ensiastjob.model.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "ApplyOffer", value = "/apply-offer")
public class ApplyOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                int offerId = Integer.parseInt(request.getParameter("offerId"));

                OfferDaoImpl offerDao = new OfferDaoImpl();
                Offer offer = offerDao.getOfferById(offerId);

                //to put company profile picture
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                String companyPicture = companyDao.getCompanyProfilePicture(offer.getCompanyId());

                offer.setCompanyPicture(companyPicture);

                request.setAttribute("offer", offer);

                request.getRequestDispatcher("view/student/applyOffer.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Student student = (Student) session.getAttribute("student");

        CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();
        OfferDaoImpl offerDao = new OfferDaoImpl();

        int offerId = Integer.parseInt(request.getParameter("offerId"));
        if (offerDao.getOfferById(offerId).isApprovedOffer()) {
            String githubUsername = request.getParameter("github-username");
            String motivation = request.getParameter("motivation");
            Part cvPart = request.getPart("cv-file");

            Candidacy candidacy = new Candidacy();

            int studentId = student.getStudentId();

            candidacy.setStudentId(studentId);
            candidacy.setOfferId(offerId);
            candidacy.setGithubUsername(githubUsername);
            candidacy.setStudentCV(uploadCV(cvPart, studentId, offerId));
            candidacy.setMotivation(motivation);
            candidacy.setCandidacyStatus(CandidacyStatus.valueOf("Pending"));

            candidacyDao.addCandidacy(candidacy);

            response.sendRedirect("/home-student");
        }
    }

    private String uploadCV(Part cv, int studentId, int offerId) throws IOException {
        String imageFileName = UploadPictureServlet.extractFileName(cv);
        String extension = imageFileName.substring(imageFileName.lastIndexOf("."));
        //Add your home path
        String savePath = HomePath.HOMEPATH + "\\CVs" + File.separator + "cv" + studentId + "_" + offerId + extension;

        File fileSaveDir = new File(savePath);
        cv.write(savePath + File.separator);

        savePath = savePath.replace("\\", "/");
        savePath = savePath.substring(savePath.lastIndexOf("ensiastjob"));

        return savePath;
    }

}
