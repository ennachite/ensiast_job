package ensiastjob.controller;

import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.Offer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeCompany", value = "/home-company")
public class HomeCompanyServlet extends HttpServlet {
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

                Company company = (Company) session.getAttribute("company");

                List<Offer> offers = offerDao.getAllOffersByCompany(company.getCompanyId());

                request.setAttribute("offers", offers);
                request.getRequestDispatcher("view/company/homeCompany.jsp").forward(request, response);
            }
        }
    }

}
