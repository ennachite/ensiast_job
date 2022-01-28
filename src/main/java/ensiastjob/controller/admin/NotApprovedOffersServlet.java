package ensiastjob.controller.admin;

import ensiastjob.dao.AdminDaoImpl;
import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NotApprovedOffers", value = "/not-approved-offers")
public class NotApprovedOffersServlet extends HttpServlet {
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
                AdminDaoImpl adminDao = new AdminDaoImpl();

                request.getRequestDispatcher("/view/admin/notApprovedOffers.jsp").forward(request,response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
