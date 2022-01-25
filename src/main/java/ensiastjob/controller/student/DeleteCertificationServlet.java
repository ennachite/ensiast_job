package ensiastjob.controller.student;

import ensiastjob.dao.student.CertificationDaoImpl;
import ensiastjob.dao.student.ExperienceDaoImpl;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCertificationServlet", value = "/profile/delete-certification")
public class DeleteCertificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                CertificationDaoImpl certificationDao = new CertificationDaoImpl();

                int certificationIdDeleted = Integer.parseInt(request.getParameter("certificationIdDeleted"));

                certificationDao.deleteCertification(certificationIdDeleted);

                response.sendRedirect("/profile");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
