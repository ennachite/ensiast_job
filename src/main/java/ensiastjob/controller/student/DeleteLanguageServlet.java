package ensiastjob.controller.student;

import ensiastjob.dao.student.LanguageDaoImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteLanguage", value = "/profile/delete-language")
public class DeleteLanguageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        if (session.getAttribute("member") == null) {
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

}
