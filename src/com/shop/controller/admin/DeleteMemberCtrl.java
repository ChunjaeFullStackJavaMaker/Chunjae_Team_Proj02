package com.shop.controller.admin;

import com.shop.model.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DeleteMember.do")
public class DeleteMemberCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] membs = request.getParameterValues("id");

        MemberDAO dao = new MemberDAO();
        int cnt = 0;
        for(String id:membs){
            cnt = cnt + dao.deleteMember(id);
        }

        String msg = cnt + "명이 탈퇴처리 되었습니다.";
        PrintWriter out = response.getWriter();

        if(cnt>0){
            response.sendRedirect("/AdminMemberList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}
