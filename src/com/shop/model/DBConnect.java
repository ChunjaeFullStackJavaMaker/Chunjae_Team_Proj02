package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {

    // 결제 테이블 sql문
    final static String PAYMENT_SELECT_ONE = "select * from payment where pay_no=?";
    final static String PAYMENT_SELECT_LIST = "select * from payment where cus_id=? and resdate between ? and ?";
    final static String GET_PAY_NO = "select pay_no from payment order by pay_no desc limit 1";
    final static String PAYMENT_SELECT_CID ="select * from payment where custom_id=?";
    
    //출고 관리 sql문
    final static String SERVE_PAYMENT =  "insert into payment values (default, ?, ?, ?, ?, ?, ?, ?, '')";
    final static String SERVE_INSERT = "insert into serve values(default, ?, ?, ?, default)";

    // 반품 처리 sql문
    final static String SELECT_MY_ORDER_LIST = "select pay.pay_no, resdate, thumb, description, title, amount, pay_price, del_state from payment pay, delivery del, product pro where pay.pay_no = del.pay_no and pro.pro_no=pay.pro_no and cus_id=? order by resdate desc";
    final static String RETURN_PAYMENT = "delete from payment where pay_no=?";
    final static String RETURN_PAYMENTS = "delete from payment where cus_id=? and resdate between ? and ?";
    final static String RETURN_RECEIVE = "insert into receive values (default, ?, ?, ?, default)";
    final static String RETURN_SERVE = "delete from serve where se_no=?";
    final static String RETURN_SERVES = "delete from serve where se_no in (select pay_no from payment where resdate between ? and ? and cus_id=?)";
    final static String RETURN_CART = "insert into cart values (default, ?, ?, ?)";
    final static String RETURN_DELIVERY = "delete from delivery where pay_no=?";
    final static String RETURN_DELIVERIES = "delete from delivery where pay_no in (select pay_no from payment where resdate between ? and ? and cus_id=?)";

    //회원 관리 sql문
    final static String Member_SELECT_ONE = "select * from member where id=?";

    //상품 관리 sql문
    final static String PRODUCT_SELECT_ALL = "select * from product order by pro_no";
    final static String PRODUCT_SELECT_ONE = "select * from product where pro_no=?";

    //배송 관리 sql문
    final static String DELIVERY_INSERT = "insert into delivery values (default, ?, ?, ?, ?, '','',default,default,'','')";
    final static String DELIVERY_SELECT_PAYNO = "select * from delivery where pay_no=?";

    //장바구니 관리 sql문
    final static String CART_DELETE = "delete from cart where cart_no=?";
    final static String CART_SELECT_CID = "select * from cart where cid=?";




    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}