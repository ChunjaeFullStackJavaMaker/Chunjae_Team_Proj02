package com.shop.model;

import com.shop.dto.Payment;
import com.shop.dto.Serve;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PaymentDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String sql = "";

    //결제 처리(PaymentDAO.addPayment(pay))
    public int addPayment(Payment pay){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.SERVE_PAYMENT);
            pstmt.setString(1, pay.getCus_id());
            pstmt.setInt(2, pay.getPro_no());
            pstmt.setInt(3, pay.getAmount());
            pstmt.setString(4, pay.getPay_method());
            pstmt.setString(5, pay.getPay_com());
            pstmt.setString(6, pay.getCus_num());
            pstmt.setInt(7, pay.getPay_price());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    //출고 처리(PaymentDAO.addServe(serv))
    public int addServe(Serve serv){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.SERVE_INSERT);
            pstmt.setInt(1, serv.getPro_no());
            pstmt.setInt(2, serv.getAmount());
            pstmt.setInt(3, serv.getSe_price());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public Payment getPayment(int pay_no){
        Payment pay = new Payment();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.PAYMENT_SELECT_ONE);
            pstmt.setInt(1, pay_no);
            rs = pstmt.executeQuery();
            if(rs.next()){
                pay.setPay_no(rs.getInt("pay_no"));
                pay.setCus_id(rs.getString("cid"));
                pay.setPro_no(rs.getInt("pro_no"));
                pay.setAmount(rs.getInt("amount"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return pay;
    }

    public int getPay_no(){
        int Pay_no = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.GET_PAY_NO);
            rs = pstmt.executeQuery();
            if(rs.next()){
                Pay_no = rs.getInt("sno");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return Pay_no;
    }

}
