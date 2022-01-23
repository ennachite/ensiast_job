package ensiastjob.controller;

import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Offer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteOffer", value = "/delete-offer")
public class DeleteOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                request.getRequestDispatcher("view/student/profileStudent.jsp").forward(request, response);
            } else if (session.getAttribute("role").equals("COMPANY")) {

                OfferDaoImpl offerDao = new OfferDaoImpl();

                int offerIdDeleted = Integer.parseInt(request.getParameter("offerIdDeleted"));

                offerDao.deleteOffer(offerIdDeleted);

                response.sendRedirect("/home-company");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
