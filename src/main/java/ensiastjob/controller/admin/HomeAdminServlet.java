package ensiastjob.controller.admin;

import ensiastjob.dao.CompanyDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.dao.OfferDaoImpl;
import ensiastjob.dao.StudentDaoImpl;
import ensiastjob.model.Member;
import ensiastjob.model.Offer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeAdmin", value = "/home-admin")
public class HomeAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/home-company");
            } else if (session.getAttribute("role").equals("STUDENT")) {
                response.sendRedirect("/home-student");
            }else if(session.getAttribute("role").equals("ADMIN")){
                MemberDaoImpl memberDao = new MemberDaoImpl();
                StudentDaoImpl studentDao = new StudentDaoImpl();
                CompanyDaoImpl companyDao = new CompanyDaoImpl();
                OfferDaoImpl offerDao = new OfferDaoImpl();

                int totalMembers = memberDao.getTotalMembers();
                int totalStudents = studentDao.getTotalStudents();
                int totalCompanies = companyDao.getTotalCompanies();
                int totalOffers = offerDao.getTotalOffers();
                int totalInternships = offerDao.getTotalInterships();
                int totalJobOffers = totalOffers - totalInternships;

                request.setAttribute("totalMembers",totalMembers);
                request.setAttribute("totalStudents",totalStudents);
                request.setAttribute("totalCompanies",totalCompanies);
                request.setAttribute("totalOffers",totalOffers);
                request.setAttribute("totalInternships",totalInternships);
                request.setAttribute("totalJobOffers",totalJobOffers);

                request.getRequestDispatcher("/view/admin/homeAdmin.jsp").forward(request,response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
