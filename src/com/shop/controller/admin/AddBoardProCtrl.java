package com.shop.controller.admin;

import com.shop.dto.Board;
import com.shop.model.BoardDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/AddBoardPro.do")
public class AddBoardProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String title = request.getParameter("title");
        //String content = request.getParameter("content");

        Board boa = new Board();
        //noti.setTitle(title);
        boa.setTitle(request.getParameter("title"));
        boa.setContent(request.getParameter("content"));

        PrintWriter out = response.getWriter();

        BoardDAO dao = new BoardDAO();
        int a = dao.addBoard(boa);
        if(a>0) {
            response.sendRedirect(request.getContextPath()+"/BoardList.do");
        } else {
            //request.sendRedirect("/AddBoard.do");
            out.println("<script>history.go(-1);</script>");
        }
    }
}
