package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {
    //회원 관리 패턴
    final static String Member_SELECT_ONE = "select * from member where id=?";

    //상품 관리 패턴
    final static String PRODUCT_SELECT_ALL = "select * from product order by pro_no";
    final static String PRODUCT_SELECT_ONE = "select * from product where pro_no=?";

    //결제 관리 패턴
    final static String SERVE_PAYMENT =  "insert into payment values (default, ?, ?, ?, ?, ?, ?, ?, '')";
    final static String PAYMENT_SELECT_ONE = "select * from payment where pay_no=?";
    final static String SERVE_INSERT = "insert into serve values(default, ?, ?, ?, default)";
    final static String GET_PAY_NO = "select pay_no from payment order by pay_no desc limit 1";
    final static String PAYMENT_SELECT_CID ="select * from payment where custom_id=?";


    //배송 관리 패턴
    final static String DELIVERY_INSERT = "insert into delivery values (default, ?, ?, ?, ?, '','',default,default,'','')";
    final static String DELIVERY_SELECT_PAYNO = "select * from delivery where pay_no=?";

    //장바구니 관리 패턴
    final static String CART_DELETE = "delete from cart where cart_no=?";
    final static String CART_SELECT_CID = "select * from cart where cid=?";




    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}
