package com.shop.controller.admin;

import com.shop.model.BoardDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DeleteBoardCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));

        BoardDAO dao = new BoardDAO();
        int a = dao.deleteBoard(no);

        PrintWriter out = response.getWriter();

        if(a>0){
            response.sendRedirect(request.getContextPath()+"/BoardList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}
