package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.model.Offer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeStudent", value = "/home-student")
public class HomeStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                OfferDaoImpl offerDao = new OfferDaoImpl();
                CompanyDaoImpl companyDao = new CompanyDaoImpl();

                List<Offer> offers = offerDao.getAllOffers();

                for (Offer offer : offers) {
                    offer.setCompanyName(companyDao.getCompanyById(offer.getCompanyId()).getCompanyName());
                    offer.setCompanyPicture(companyDao.getCompanyProfilePicture(offer.getCompanyId()));
                }

                request.setAttribute("offers", offers);
                request.getRequestDispatcher("view/student/homeStudent.jsp").forward(request, response);
            }
        }
    }

}
