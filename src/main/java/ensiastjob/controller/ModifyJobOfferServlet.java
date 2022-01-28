package ensiastjob.controller;

import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Offer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ModifyJobOffer", value = "/modify-job-offer")
public class ModifyJobOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else if (session.getAttribute("role").equals("STUDENT")) {
            response.sendRedirect("/home-student");
        } else {
            int offerId = Integer.parseInt(request.getParameter("offerId"));
            OfferDaoImpl offerDao = new OfferDaoImpl();
            Offer offer = offerDao.getOfferById(offerId);

            request.setAttribute("offer", offer);

            request.getRequestDispatcher("view/company/offer/modifyJobOffer.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int offerId = Integer.parseInt(request.getParameter("offerId"));
        String offerName = request.getParameter("offer-name");
        int offerSalary = Integer.parseInt(request.getParameter("offer-salary"));
        String offerLocation = request.getParameter("offer-location");
        String offerDomain = request.getParameter("offer-domain");
        String jobType = request.getParameter("job-type");
        String description = request.getParameter("description");

        OfferDaoImpl offerDao = new OfferDaoImpl();
        Offer offer = new Offer();

        offer.setOfferId(offerId);
        offer.setOfferName(offerName);
        offer.setOfferSalary(offerSalary);
        offer.setOfferLocation(offerLocation);
        offer.setOfferDomain(offerDomain);
        offer.setJobType(jobType);
        offer.setOfferDescription(description);

        offerDao.updateOffer(offer);

        response.sendRedirect("/home-company");
    }
}
