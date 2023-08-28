package com.shop.controller.admin;

import com.shop.dto.Product;
import com.shop.model.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/AdminProductList.do")
public class AdminProList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DBConnect con = new MariaDBCon();
        ProductDAO dao = new ProductDAO();

        List<Product> proList = dao.getProductList();
        request.setAttribute("proList", proList);

        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/admin/adminProductList.jsp");
        view.forward(request, response);
    }
}
