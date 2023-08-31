package com.shop.controller.admin;

import com.shop.dto.Product;
import com.shop.dto.Receive;
import com.shop.model.ProductDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/ReceivePro.do")
public class ReceiveProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int pro_no = Integer.parseInt(request.getParameter("pro_no"));
        int receive = Integer.parseInt(request.getParameter("receive"));
        int pro_price = Integer.parseInt(request.getParameter("pro_price"));

        int suc=0;

        ProductDAO dao = new ProductDAO();
        Receive rec = new Receive();

        rec.setPro_no(pro_no);
        rec.setAmount(receive);
        rec.setRe_price(pro_price);

        suc = dao.addReceive(rec);

        if(suc>0){
            response.sendRedirect(request.getContextPath() + "/getProduct.do");
        } else {
            response.sendRedirect(request.getContextPath() + "/ProList.do");
        }

    }
}
