package com.shop.controller.admin;

import com.shop.dto.Board;
import com.shop.model.BoardDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdminBoardList.do")
public class BoardListCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("msg", "공지사항 목록을 출력합니다.");

        BoardDAO dao = new BoardDAO();
        List<Board> boaList = dao.getBoardList();
        request.setAttribute("boaList", boaList);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/boardList.jsp");
        view.forward(request, response);
    }
}
