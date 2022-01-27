package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Candidacy;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "ModifyCandidacyStatus", value = "/modify-candidacy-status")
public class ModifyCandidacyStatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {

                CandidacyDaoImpl candidacyDao = new CandidacyDaoImpl();

                int candidacyId = Integer.parseInt(request.getParameter("candidacyId"));
                int candidacyStatus = Integer.parseInt(request.getParameter("candidacyStatus"));

                String status = candidacyStatus == 1 ? "Accepted" : "Rejected";


                candidacyDao.modifyCandidacyStatus(candidacyId, status);
                Candidacy candidacy = candidacyDao.getCandidacyById(candidacyId);

                response.sendRedirect("/offer-candidacies?offerId=" + candidacy.getOfferId());
            }
        }
    }

}
