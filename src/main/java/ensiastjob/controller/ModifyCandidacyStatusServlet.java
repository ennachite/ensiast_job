package ensiastjob.controller;

import ensiastjob.dao.CandidacyDaoImpl;
import ensiastjob.model.Candidacy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ModifyCandidacyStatus", value = "/modify-candidacy-status")
public class ModifyCandidacyStatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
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
