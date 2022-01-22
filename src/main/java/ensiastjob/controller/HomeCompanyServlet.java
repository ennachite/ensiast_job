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

@WebServlet(name = "HomeCompany", value = "/home-company")
public class HomeCompanyServlet extends HttpServlet {
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

                Company company = (Company) session.getAttribute("company");

                List<Offer> offers = offerDao.getAllOffersByCompany(company.getCompanyId());

                request.setAttribute("offers", offers);
                request.getRequestDispatcher("view/company/homeCompany.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
