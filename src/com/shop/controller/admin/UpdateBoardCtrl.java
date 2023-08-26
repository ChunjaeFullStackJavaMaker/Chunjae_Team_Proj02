package com.shop.controller.admin;

import com.shop.dto.Board;
import com.shop.model.BoardDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateBoardCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "공지사항의 내용을 수정합니다.";
        int no = Integer.parseInt(request.getParameter("no"));

        BoardDAO dao = new BoardDAO();
        Board boa = dao.getBoard(no);

        request.setAttribute("msg", msg);
        request.setAttribute("boa", boa);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/updateBoard.jsp");
        view.forward(request,response);
    }
}
