package com.shop.model;

import com.shop.dto.Delivery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DeliveryDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String sql = "";

    public int addDelivery(Delivery del){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.DELIVERY_INSERT);
            pstmt.setInt(1, del.getPay_no());
            pstmt.setString(2, del.getCustom_id());
            pstmt.setString(3, del.getDel_addr());
            pstmt.setString(4, del.getCus_tel());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

}
