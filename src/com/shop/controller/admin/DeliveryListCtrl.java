package com.shop.controller.admin;

import com.shop.model.DeliveryDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/DeliveryList.do")
public class DeliveryListCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String msg = "배송 정보를 조회합니다";
        DeliveryDAO dao = new DeliveryDAO();
    }
}
