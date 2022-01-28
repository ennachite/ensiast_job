package ensiastjob.controller.student;

import ensiastjob.dao.student.CertificationDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteCertificationServlet", value = "/profile/delete-certification")
public class DeleteCertificationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
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

}
