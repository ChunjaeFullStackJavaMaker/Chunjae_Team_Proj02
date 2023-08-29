package com.shop.model;

import com.shop.dto.PaymentVO;
import com.shop.dto.Review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String sql = "";

    //리뷰 리스트
    public List<Review>  getByIdReview(String id){
        List<Review> reviewList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.REVIEW_SELECT_CID);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next()){
                Review re = new Review();
                re.setRev_no(rs.getInt("rev_no"));
                re.setMem_id(rs.getString("mem_id"));
                re.setPay_no(rs.getInt("pay_no"));
                re.setPro(rs.getString("pro"));
                re.setStar(rs.getInt("star"));
                re.setContent(rs.getString("content"));
                re.setRegdate(rs.getString("resdate"));
                re.setPro_no(rs.getInt("pro_no"));
                reviewList.add(re);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return reviewList;
    }

    //리뷰 삭제
    public int delReview(int rev_no){
        int cnt =0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.REVIEW_DELETE);
            pstmt.setInt(1, rev_no);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }
}
