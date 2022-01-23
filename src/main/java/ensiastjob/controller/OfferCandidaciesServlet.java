package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Offer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OfferCandidacies", value = "/offer-candidacies")
public class OfferCandidaciesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                int offerId = Integer.parseInt(request.getParameter("offerId"));

                CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                List<Candidacy> candidacies = candidacyDao.getCandidaciesByOffer(offerId);

                request.setAttribute("candidacies", candidacies);
                request.getRequestDispatcher("view/company/offer/candidacies.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
