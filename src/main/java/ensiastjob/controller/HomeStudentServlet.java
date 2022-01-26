package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Company;
import ensiastjob.model.Member;
import ensiastjob.model.Offer;
import ensiastjob.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeStudent", value = "/home-student")
public class HomeStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                OfferDaoImpl offerDao = new OfferDaoImpl();
                CompanyDaoImpl companyDao = new CompanyDaoImpl();

                List<Offer> offers = offerDao.getAllOffers();

                for (Offer offer : offers) {
                    offer.setCompanyPicture(companyDao.getCompanyProfilePicture(offer.getCompanyId()));
                }

                request.setAttribute("offers", offers);
                request.getRequestDispatcher("view/student/homeStudent.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
