package com.shop.model;

import com.shop.dto.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String sql = "";

    public Product getProduct(int pro_no){
        Product pro = new Product();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.PRODUCT_SELECT_ONE);
            pstmt.setInt(1, pro_no);
            rs = pstmt.executeQuery();
            if(rs.next()){
                pro.setPro_no(rs.getInt("pro_no"));
                pro.setPro_cate_no(rs.getString("pro_cate_no"));
                pro.setCate_id(rs.getString("cate_id"));
                pro.setPrice(rs.getInt("price"));
                pro.setTitle(rs.getString("title"));
                pro.setDescription(rs.getString("description"));
                pro.setPro_content(rs.getString("pro_content"));
                pro.setThumb(rs.getString("thumb"));
                pro.setImg_src(rs.getString("img_src"));
                pro.setResdate(rs.getString("resdate"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return pro;
    }

    public List<Product> getProductList(){
        List<Product> proList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.PRODUCT_SELECT_ALL);
            rs = pstmt.executeQuery();
            while(rs.next()){
                Product pro = new Product();
                pro.setPro_no(rs.getInt("pro_no"));
                pro.setPro_cate_no(rs.getString("pro_cate_no"));
                pro.setCate_id(rs.getString("cate_id"));
                pro.setPrice(rs.getInt("price"));
                pro.setTitle(rs.getString("title"));
                pro.setDescription(rs.getString("description"));
                pro.setPro_content(rs.getString("pro_content"));
                pro.setThumb(rs.getString("thumb"));
                pro.setImg_src(rs.getString("img_src"));
                pro.setResdate(rs.getString("resdate"));
                proList.add(pro);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return proList;
    }


}