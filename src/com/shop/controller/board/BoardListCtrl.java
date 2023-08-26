package com.shop.controller.board;

import com.shop.dto.Board;
import com.shop.model.BoardDAO;
import com.shop.util.Page;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/BoardList.do")
public class BoardListCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("msg", "공지사항 목록을 출력합니다.");

        BoardDAO dao = new BoardDAO();
        List<Board> boaList = dao.getBoardList();
        Page pg = new Page();
        int total = dao.getCount();
        pg.makeBlock(1);
        pg.makeLastPageNum();
        pg.makePostStart(1);
        boaList = dao.getBoardList(0);

        int curPageNum = 1;
        if(request.getParameter("page")!=null){
            curPageNum = Integer.parseInt(request.getParameter("page"));
            pg.makeBlock(curPageNum);
            pg.makeLastPageNum();
            pg.makePostStart(curPageNum);
            boaList = dao.getBoardList(pg.getPostStart()-1);
        }

        request.setAttribute("totalPageCount", pg.getTotalPageCount());
        request.setAttribute("pageBlockNum", pg.getPageBlockNum());
        request.setAttribute("totalBlockNum", pg.getTotalBlockNum());
        request.setAttribute("curPageNum", curPageNum);
        request.setAttribute("blockStartNum", pg.getBlockStartNum());
        request.setAttribute("blockLastNum", pg.getBlockLastNum());
        request.setAttribute("lastPageNum", pg.getLastPageNum());
        request.setAttribute("boaList", boaList);
        RequestDispatcher view = request.getRequestDispatcher("/board/boardList.jsp");
        view.forward(request, response);
    }
}
