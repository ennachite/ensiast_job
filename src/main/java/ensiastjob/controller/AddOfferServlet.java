package ensiastjob.controller;

import ensiastjob.dao.CompanyDaoImpl;
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

@WebServlet(name = "AddOffer", value = "/add-offer")
public class AddOfferServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            } else if (session.getAttribute("role").equals("COMPANY")) {
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                Company company = (Company) session.getAttribute("company");
                if (company.isApproved())
                    request.getRequestDispatcher("view/company/addOfferCompany.jsp").forward(request, response);
                else {
                    response.sendRedirect("/not-approved");
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        OfferDaoImpl offerDao = new OfferDaoImpl();
        Company company = (Company) session.getAttribute("company");
        Offer offer = new Offer();

        String offerName = request.getParameter("offer-name");
        int offerSalary = Integer.parseInt(request.getParameter("offer-salary"));
        String offerLocation = request.getParameter("offer-location");
        String offerDomain = request.getParameter("offer-domain");
        String jobType = request.getParameter("job-type");
        String description = request.getParameter("description");

        offer.setCompanyId(company.getCompanyId());
        offer.setOfferName(offerName);
        offer.setOfferSalary(offerSalary);
        offer.setOfferLocation(offerLocation);
        offer.setOfferDomain(offerDomain);
        offer.setJobType(jobType);
        offer.setOfferDescription(description);
        offer.setApprovedOffer(false);

        int status = offerDao.addOffer(offer);

        if (status == -1) {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("view/company/addOfferCompany.jsp").forward(request, response);
        } else {
            response.sendRedirect("/home-company");
        }
    }
}
