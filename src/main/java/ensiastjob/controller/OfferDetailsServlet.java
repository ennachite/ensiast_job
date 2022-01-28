package ensiastjob.controller;

import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Offer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OfferDetails", value = "/offer-details")
public class OfferDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int offerId = Integer.parseInt(request.getParameter("offerId"));

        OfferDaoImpl offerDao = new OfferDaoImpl();
        Offer offer = offerDao.getOfferById(offerId);

        request.setAttribute("offer", offer);

        request.getRequestDispatcher("view/company/offer/offerDetails.jsp").forward(request, response);
    }

}
