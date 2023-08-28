package com.shop.controller.admin;

import com.shop.model.ProductDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/DelProduct.do")
public class DelProductCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int pro_no = Integer.parseInt(request.getParameter("pro_no"));

        String msg = "상품 정보를 삭제합니다.";
        ServletContext application = request.getServletContext();
        String home = application.getContextPath();

        ProductDAO dao = new ProductDAO();
        int cnt = dao.delProduct(pro_no);

        response.sendRedirect(home + "/AdminProductList.do");
    }
}
