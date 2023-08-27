package com.shop.controller.payment;

import com.shop.dto.*;
import com.shop.model.CartDAO;
import com.shop.model.DeliveryDAO;
import com.shop.model.PaymentDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkoutPro.do")
public class checkoutProCtrl extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //세션 생성
        HttpSession session = request.getSession();
        String cid = (String) session.getAttribute("sid");

        CartDAO dao = new CartDAO();
        List<CartVO> cartList = dao.getByIdCartList(cid);

        //결제 처리
        List<Payment> payList = new ArrayList<>();
        for (int i = 0; i < cartList.size(); i++) {
            Payment pay = new Payment();
            pay.setCus_id(cid);
            pay.setPro_no(cartList.get(i).getPro_no());
            pay.setAmount(cartList.get(i).getAmount());
            pay.setPay_method(request.getParameter("pay_method"));
            pay.setPay_com(request.getParameter("pay_com2"));
            pay.setCus_num(request.getParameter("cus_num"));
            pay.setPay_price(cartList.get(i).getPrice());
            payList.add(pay);
        }
        PaymentDAO payDAO = new PaymentDAO();

        for (int i = 0; i < cartList.size(); i++) {
            int cnt = payDAO.addPayment(payList.get(i));
        }

        //출고처리

        List<Serve> servList = new ArrayList<>();
        for (int i = 0; i < cartList.size(); i++) {
            Serve serv = new Serve();
            serv.setPro_no(cartList.get(i).getPro_no());
            serv.setAmount(cartList.get(i).getAmount());
            int se_price = (int) Double.parseDouble(request.getParameter("se_price"));
            serv.setSe_price(se_price);
            servList.add(serv);
        }

        for (int i = 0; i < cartList.size(); i++) {
            int cnt1 = payDAO.addServe(servList.get(i));
        }

        //배송 처리
        List<Delivery> delList = new ArrayList<>();
        for (int i = 0; i < cartList.size(); i++) {
            Delivery del = new Delivery();
            del.setPay_no(payDAO.getPay_no());
            del.setCustom_id(cid);
            del.setDel_addr(request.getParameter("address1") + "<br>" + request.getParameter("address2") + "<br>" + request.getParameter("postcode"));
            del.setCus_tel(request.getParameter("custel"));
            delList.add(del);
        }

        DeliveryDAO deliDAO = new DeliveryDAO();
        for (int i = 0; i < cartList.size(); i++) {
            int cnt2 = deliDAO.addDelivery(delList.get(i));
        }

        //카트 삭제
        CartDAO CartDAO = new CartDAO();
        Cart cart = new Cart();
        int cart_no = 0;
        int cnt3 = 0;

        for (int i = 0; i < cartList.size(); i++) {
            cart.setCart_no(cartList.get(i).getCart_no());
            cnt3 += CartDAO.delCart(cart.getCart_no());
        }

        String path = request.getContextPath();
        response.sendRedirect(path + "/shop/shopping-cart.do");

    }

}

