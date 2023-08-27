package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {

    // 결제 테이블 sql문
    final static String PAYMENT_SELECT_ONE = "select * from payment where pay_no=?";
    final static String PAYMENT_SELECT_LIST = "select * from payment where cus_id=? and resdate between ? and ?";

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


    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}