package ensiastjob.controller;

import ensiastjob.dao.CandidacyDao;
import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.extra.Strings;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Member;
import ensiastjob.model.Offer;
import ensiastjob.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ApplyOffer", value = "/apply-offer")
public class ApplyOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                int offerId = Integer.parseInt(request.getParameter("offerId"));

                OfferDaoImpl offerDao = new OfferDaoImpl();
                Offer offer = offerDao.getOfferById(offerId);

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

        int offerId = Integer.parseInt(request.getParameter("offerId"));
        String githubUsername = request.getParameter("github-username");
        String motivation = request.getParameter("motivation");

        Candidacy candidacy = new Candidacy();

        candidacy.setStudentId(student.getStudentId());
        candidacy.setOfferId(offerId);
        candidacy.setGithubUsername(githubUsername);
        candidacy.setMotivation(motivation);

        candidacyDao.addCandidacy(candidacy);

        response.sendRedirect("/home-student");

    }
}
