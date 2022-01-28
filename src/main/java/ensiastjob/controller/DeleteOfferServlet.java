package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteOffer", value = "/delete-offer")
public class DeleteOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {

                OfferDaoImpl offerDao = new OfferDaoImpl();
                CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                int offerIdDeleted = Integer.parseInt(request.getParameter("offerIdDeleted"));

                candidacyDao.deleteAllCandidaciesByOffer(offerIdDeleted);

                offerDao.deleteOffer(offerIdDeleted);

                response.sendRedirect("/home-company");
            }
        }
    }

}
