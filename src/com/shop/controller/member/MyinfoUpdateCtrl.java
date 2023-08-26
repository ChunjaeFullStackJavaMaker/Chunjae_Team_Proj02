package com.shop.controller.member;

import com.shop.dto.Member;
import com.shop.model.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/MyinfoUpdate.do")
public class MyinfoUpdateCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getParameter("id");

        MemberDAO dao = new MemberDAO();
        Member mem = dao.getMember(id);

        request.setAttribute("mem", mem);
        RequestDispatcher view = request.getRequestDispatcher("/member/myinfoUpdate.jsp");
        view.forward(request, response);
    }
}