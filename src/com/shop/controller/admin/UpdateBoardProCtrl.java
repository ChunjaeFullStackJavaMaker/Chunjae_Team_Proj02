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

@WebServlet("/UpdateBoardPro.do")
public class UpdateBoardProCtrl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Board boa = new Board();
        boa.setBno(Integer.parseInt(request.getParameter("bno")));
        boa.setTitle(request.getParameter("title"));
        boa.setContent(request.getParameter("content"));

        BoardDAO dao = new BoardDAO();
        int a = dao.updateBoard(boa);

        PrintWriter out = response.getWriter();

        if(a>0){
            response.sendRedirect(request.getContextPath()+"/BoardList.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}
