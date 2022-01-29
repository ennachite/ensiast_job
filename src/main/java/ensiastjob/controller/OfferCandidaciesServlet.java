package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Company;
import ensiastjob.model.Offer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OfferCandidacies", value = "/offer-candidacies")
public class OfferCandidaciesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                Company company = (Company) session.getAttribute("company");

                if (company.isApproved()) {
                    int offerId = Integer.parseInt(request.getParameter("offerId"));
                    OfferDaoImpl offerDao = new OfferDaoImpl();
                    Offer offer = offerDao.getOfferById(offerId);

                    if (offer.getCompanyId() == company.getCompanyId()) {
                        if (offer.isApprovedOffer()) {
                            CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                            List<Candidacy> candidacies = candidacyDao.getCandidaciesByOffer(offerId);

                            request.setAttribute("candidacies", candidacies);
                            request.getRequestDispatcher("view/company/offer/candidacies.jsp").forward(request, response);
                        } else {
                            response.sendRedirect("/home-company");
                        }
                    }
                } else {
                    response.sendRedirect("/not-approved");
                }

            }
        }
    }

}
