package com.shop.controller.product;

import com.shop.dto.Review;
import com.shop.model.ProductDAO;
import com.shop.model.ReviewDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/AddReviewPro.do")
public class AddReviewProCtrl extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Review review = new Review();
        review.setMem_id(request.getParameter("mem_id"));
        review.setPay_no(Integer.parseInt(request.getParameter("pay_no")));
        review.setPro(request.getParameter("pro"));
        review.setStar(Integer.parseInt(request.getParameter("star")));
        review.setContent(request.getParameter("content"));
        review.setRegdate(request.getParameter("regdate"));
        review.setPro_no(Integer.parseInt(request.getParameter("pro_no")));

        PrintWriter out = response.getWriter();

        ReviewDAO dao = new ReviewDAO();
        int a = dao.addReview(review);
        if (a > 0) {
            response.sendRedirect(request.getContextPath()+"/getProduct.do");
        } else {
            out.println("<script>history.go(-1);</script>");
        }
    }
}