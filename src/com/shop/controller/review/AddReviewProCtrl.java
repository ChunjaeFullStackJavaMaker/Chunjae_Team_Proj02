package com.shop.controller.review;

import com.shop.dto.Review;
import com.shop.model.ReviewDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/AddReviewPro.do")
public class AddReviewProCtrl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pay_no = Integer.parseInt(request.getParameter("pay_no"));
        String cus_id = request.getParameter("cus_id");
        String content = request.getParameter("content");
        int star = Integer.parseInt(request.getParameter("star"));

        Review rev = new Review();
        rev.setPay_no(pay_no);
        rev.setMem_id(cus_id);
        rev.setContent(content);
        rev.setStar(star);

    }


}
