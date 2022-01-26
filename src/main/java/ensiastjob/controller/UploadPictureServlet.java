package ensiastjob.controller;

import ensiastjob.dao.MemberDaoImpl;
import ensiastjob.extra.HomePath;
import ensiastjob.model.Member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "UploadServlet", value = "/upload-pp")
public class UploadPictureServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        MemberDaoImpl memberDao = new MemberDaoImpl();
        Member member = (Member) session.getAttribute("member");

        Part ImgPart = request.getPart("profile-picture");
        if (ImgPart == null) {
            response.sendRedirect("/profile");
        } else {
            String imageFileName = extractFileName(ImgPart);
            String extension = imageFileName.substring(imageFileName.lastIndexOf("."));
            //Add your home path
            String savePath = HomePath.HOMEPATH + "\\pictures" + File.separator + "pdp" + member.getMemberId() + extension;

            File fileSaveDir = new File(savePath);
            ImgPart.write(savePath + File.separator);

            savePath = savePath.replace("\\", "/");
            savePath = savePath.substring(savePath.lastIndexOf("ensiastjob"));
            memberDao.addPicture(member.getMemberId(), savePath);

            session.setAttribute("member", memberDao.getMemberById(member.getMemberId()));

            response.sendRedirect("/profile");
        }
    }

    protected static String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
