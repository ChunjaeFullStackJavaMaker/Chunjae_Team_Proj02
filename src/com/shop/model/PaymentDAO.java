package com.shop.model;

import com.shop.dto.Payment;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDAO {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public Payment getPayment(int pay_no) {
        Payment pay = new Payment();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.PAYMENT_SELECT_ONE);
            pstmt.setInt(1, pay_no);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                pay.setPay_no(rs.getInt("pay_no"));
                pay.setCus_id(rs.getString("cus_id"));
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

    public List<Payment> getMyPaymentList(String resdate, String cus_id) {
        List<Payment> payList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            System.out.println(resdate.concat(".000000"));
            System.out.println(resdate.concat(".999999"));
            pstmt = conn.prepareStatement(DBConnect.PAYMENT_SELECT_LIST);
            pstmt.setString(1, cus_id);
            pstmt.setTimestamp(2, Timestamp.valueOf(resdate.concat(".000000")));
            pstmt.setTimestamp(3, Timestamp.valueOf(resdate.concat(".999999")));
            rs = pstmt.executeQuery();
            while(rs.next()) {
                Payment pay = new Payment();
                pay.setPay_no(rs.getInt("pay_no"));
                pay.setCus_id(rs.getString("cus_id"));
                pay.setPro_no(rs.getInt("pro_no"));
                pay.setAmount(rs.getInt("amount"));
                payList.add(pay);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return payList;
    }

    public int returnPaymentOne(int pay_no, int pro_no, int amount, String cus_id) {
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            conn.setAutoCommit(false);

            // 1. 반품 시 결제 내용 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_PAYMENT);
            pstmt.setInt(1, pay_no);
            cnt = cnt + pstmt.executeUpdate();

            // 2. 반품 시 배송 정보 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_DELIVERY);
            pstmt.setInt(1, pay_no);
            cnt = cnt + pstmt.executeUpdate();

            // 3. 반품 시 출고 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_SERVE);
            pstmt.setInt(1, pay_no);
            cnt = cnt + pstmt.executeUpdate();

            // 4. 반품 시 장바구니에 다시 담기
            pstmt = conn.prepareStatement(DBConnect.RETURN_CART);
            pstmt.setString(1, cus_id);
            pstmt.setInt(2, pro_no);
            pstmt.setInt(3, amount);
            cnt = cnt + pstmt.executeUpdate();

            conn.commit();
            conn.setAutoCommit(true);
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int returnPayments(String resdate, String cus_id, List<Payment> payList) {
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            conn.setAutoCommit(false);

            // 1. 반품 시 배송 정보 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_DELIVERIES);
            pstmt.setTimestamp(1, Timestamp.valueOf(resdate.concat(".000000")));
            pstmt.setTimestamp(2, Timestamp.valueOf(resdate.concat(".999999")));
            pstmt.setString(3, cus_id);
            cnt = cnt + pstmt.executeUpdate();

            // 2. 반품 시 출고 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_SERVES);
            pstmt.setTimestamp(1, Timestamp.valueOf(resdate.concat(".000000")));
            pstmt.setTimestamp(2, Timestamp.valueOf(resdate.concat(".999999")));
            pstmt.setString(3, cus_id);
            cnt = cnt + pstmt.executeUpdate();

            // 3. 반품 시 결제 내용 제거
            pstmt = conn.prepareStatement(DBConnect.RETURN_PAYMENTS);
            pstmt.setString(1, cus_id);
            pstmt.setTimestamp(2, Timestamp.valueOf(resdate.concat(".000000")));
            pstmt.setTimestamp(3, Timestamp.valueOf(resdate.concat(".999999")));
            cnt = cnt + pstmt.executeUpdate();

            // 4. 반품 시 장바구니에 다시 담기
            for(Payment pay:payList) {
                pstmt = conn.prepareStatement(DBConnect.RETURN_CART);
                pstmt.setString(1, cus_id);
                pstmt.setInt(2, pay.getPro_no());
                pstmt.setInt(3, pay.getAmount());
                cnt = cnt + pstmt.executeUpdate();
            }
            conn.commit();
            conn.setAutoCommit(true);
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

}
