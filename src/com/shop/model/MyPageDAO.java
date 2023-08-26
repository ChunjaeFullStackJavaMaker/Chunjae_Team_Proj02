package com.shop.model;

import com.shop.vo.*;

import java.sql.*;
import java.util.*;

public class MyPageDAO {

    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<MyOrderVO> getMyOrderList(String cus_id) {
        List<MyOrderVO> myOrderList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.SELECT_MY_ORDER_LIST);
            pstmt.setString(1, cus_id);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                MyOrderVO order = new MyOrderVO();
                order.setPay_no(rs.getInt("pay_no"));
                order.setResdate(rs.getString("resdate"));
                order.setThumb(rs.getString("thumb"));
                order.setDescription(rs.getString("description"));
                order.setTitle(rs.getString("title"));
                order.setAmount(rs.getInt("amount"));
                order.setPay_price(rs.getInt("pay_price"));
                String[] state_list = order.getState_list();
                order.setDel_state(state_list[rs.getInt("del_state")]);
                myOrderList.add(order);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return myOrderList;
    }

}
