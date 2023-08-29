package com.shop.controller.mypage;

import com.shop.dto.Member;
import com.shop.model.MemberDAO;
import com.shop.util.AES256;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/mypageInfo.do")
public class mypageInfoCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("sid");
        System.out.println(id);

            MemberDAO dao = new MemberDAO();
            Member mem = dao.getMember(id);

            String key = "%02x";
            String pw2 ="" ;
            try {
                pw2 = AES256.decryptAES256("pw", key);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        System.out.println(mem.toString());

            request.setAttribute("mem", mem);
            request.setAttribute("pw",pw2);
            RequestDispatcher view = request.getRequestDispatcher("/mypage/mypageInfo.jsp");
            view.forward(request, response);
    }
}
