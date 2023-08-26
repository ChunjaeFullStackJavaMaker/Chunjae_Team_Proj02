package com.shop.controller.board;

import com.shop.dto.Board;
import com.shop.model.BoardDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Board.do")
public class BoardCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));
        BoardDAO dao = new BoardDAO();
        Board boa = dao.getBoard(no);
        request.setAttribute("boa", boa);
        RequestDispatcher view = request.getRequestDispatcher("/board/getBoard.jsp");
        view.forward(request, response);
    }
}
