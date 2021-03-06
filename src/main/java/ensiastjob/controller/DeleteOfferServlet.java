package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.Offer;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteOffer", value = "/delete-offer")
public class DeleteOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        String role = (String) session.getAttribute("role");

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (role.equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (role.equals("COMPANY") || role.equals("ADMIN")) {
                Company company = (Company) session.getAttribute("company");
                if (company.isApproved()) {
                    OfferDaoImpl offerDao = new OfferDaoImpl();
                    CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                    int offerIdDeleted = Integer.parseInt(request.getParameter("offerIdDeleted"));

                    Offer offer = offerDao.getOfferById(offerIdDeleted);

                    if (offer.getCompanyId() == company.getCompanyId()) {

                        candidacyDao.deleteAllCandidaciesByOffer(offerIdDeleted);

                        offerDao.deleteOffer(offerIdDeleted);

                        response.sendRedirect("/home-company");
                    } else if (role.equals("ADMIN")) {
                        offerDao.deleteOffer(offerIdDeleted);
                        response.sendRedirect("/not-approved-offers");
                    }
                } else {
                    response.sendRedirect("/not-approved");
                }
            }
        }
    }

}
