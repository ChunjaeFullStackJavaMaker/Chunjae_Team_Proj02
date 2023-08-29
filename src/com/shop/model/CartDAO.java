package com.shop.model;

<<<<<<< HEAD
import com.shop.dto.CartVO;
import com.shop.dto.Member;
import com.shop.dto.Product;
=======
import com.shop.dto.Cart;
import com.shop.dto.CartVO;
import com.shop.dto.member;
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String sql = "";

<<<<<<< HEAD
    public int delCart(int cart_no){
=======
    public int addCart(Cart cart){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.CART_INSERT);
            pstmt.setString(1, cart.getCid());
            pstmt.setInt(2, cart.getPno());
            pstmt.setInt(3, 1);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int delCart(int cartno){
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
        int cnt = 0;
        DBConnect con = new MariaDBCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.CART_DELETE);
<<<<<<< HEAD
            pstmt.setInt(1, cart_no);
=======
            pstmt.setInt(1, cartno);
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public List<CartVO> getByIdCartList(String cid){
        List<CartVO> cartList = new ArrayList<>();
        DBConnect con = new MariaDBCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.CART_SELECT_CID);
            pstmt.setString(1, cid);
            rs = pstmt.executeQuery();
            while(rs.next()){
                CartVO cart = new CartVO();
<<<<<<< HEAD
                cart.setCart_no(rs.getInt("cart_no"));
                cart.setCus_id(rs.getString("cus_id"));
                cart.setNAME(getNAME(cart.getCus_id()));
                cart.setPro_no(rs.getInt("pro_no"));
                cart.setTitle(getTitle(cart.getPro_no()));
                cart.setPrice(getPrice(cart.getPro_no()));
=======
                cart.setCartno(rs.getInt("cartno"));
                cart.setCid(rs.getString("cid"));
                cart.setName(getCusName(cart.getCid()));
                cart.setPno(rs.getInt("pno"));
                cart.setPro_name(cart.getPro_name("pro_name"));
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                cart.setAmount(rs.getInt("amount"));
                cartList.add(cart);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
<<<<<<< HEAD
            con.close(pstmt, conn);
=======
            con.close(rs, pstmt, conn);
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
        }
        return cartList;
    }

<<<<<<< HEAD

    public String getNAME(String id){
        MemberDAO dao = new MemberDAO();
        Member mem = dao.getMember(id);
        return mem.getNAME();
    }

    public String getTitle(int pro_no){
        ProductDAO dao = new ProductDAO();
        Product pro = dao.getProduct(pro_no);
        return pro.getTitle();
    }

    public int getPrice(int pro_no){
        ProductDAO dao = new ProductDAO();
        Product pro = dao.getProduct(pro_no);
        return pro.getPrice();
    }
}
=======
    public String getCusName(String id){
        MemberDAO dao = new MemberDAO();
        member cus = dao.getCustom(id);
        return cus.getName();
    }
}
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
