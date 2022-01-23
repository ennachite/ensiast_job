package ensiastjob.controller;

import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Offer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
