package ensiastjob.controller.student;

import ensiastjob.dao.student.LanguageDaoImpl;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteLanguage", value = "/profile/delete-language")
public class DeleteLanguageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if ( (Member) session.getAttribute("member") == null) {
            response.sendRedirect("/");
        } else {
            if (session.getAttribute("role").equals("COMPANY")) {
                response.sendRedirect("/profile");
            } else if (session.getAttribute("role").equals("STUDENT")) {

                LanguageDaoImpl languageDao = new LanguageDaoImpl();

                int languageIdDeleted = Integer.parseInt(request.getParameter("languageIdDeleted"));

                languageDao.deleteLanguage(languageIdDeleted);

                response.sendRedirect("/profile");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
