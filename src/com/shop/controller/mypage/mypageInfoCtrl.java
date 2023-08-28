package com.shop.controller.mypage;

import com.shop.dto.Member;
import com.shop.model.MemberDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/mypageInfo.do")
public class mypageInfoCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String id = (String) request.getParameter("id");

            MemberDAO dao = new MemberDAO();
            Member mem = new Member();

            request.setAttribute("mem",mem);
            RequestDispatcher view = request.getRequestDispatcher("/mypage/mypageInfo.jsp");
            view.forward(request, response);
    }
}
