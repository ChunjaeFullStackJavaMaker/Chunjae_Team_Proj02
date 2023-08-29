package com.shop.model;

<<<<<<< HEAD
import com.shop.dto.Member;
=======
import com.shop.dto.member;
import com.shop.util.AES256;
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
<<<<<<< HEAD
=======
import java.util.ArrayList;
import java.util.List;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d

public class MemberDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String key = "%02x";

<<<<<<< HEAD
    public Member getMember(String id){
        Member mem = new Member();
=======
    public List<member> getCustomList(){
        List<member> cusList = new ArrayList<>();

        return cusList;
    }

    public member getCustom(String id){
        member cus = new member();
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_SELECT_ONE);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next()){
<<<<<<< HEAD
                mem.setId(rs.getString("id"));
                mem.setPw(rs.getString("pw"));
                mem.setNAME(rs.getString("NAME"));
                mem.setEmail(rs.getString("email"));
                mem.setTel(rs.getString("tel"));
                mem.setBirth(rs.getString("birth"));
                mem.setAddress(rs.getString("address"));
                mem.setResdate(rs.getString("resdate"));
                mem.setPOINT(rs.getInt("POINT"));
                mem.setGrade(rs.getString("grade"));
                mem.setPer(rs.getInt("per"));
=======
                cus.setId(rs.getString("id"));
                cus.setPw(rs.getString("pw"));
                cus.setName(rs.getString("name"));
                cus.setPoint(rs.getInt("point"));
                cus.setGrade(rs.getString("grade"));
                cus.setTel(rs.getString("tel"));
                cus.setEmail(rs.getString("email"));
                cus.setBirth(rs.getString("birth"));
                cus.setResdate(rs.getString("resdate"));
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
<<<<<<< HEAD
        return mem;
    }

    public int updateMember(Member user){
        int cnt =0;
        DBConnect con = new PostgreCon();
        try{
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_UPDATE);
            pstmt.setString(1,user.getId());
            pstmt.setString(2,user.getPw());
            pstmt.setString(3,user.getAddress());
            pstmt.setString(4,user.getTel());
            pstmt.setString(5,user.getEmail());
            pstmt.setString(6,user.getBirth());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally{
            con.close(pstmt,conn);
        }
        return cnt;
    }
}
=======
        return cus;
    }

    public boolean login(String id, String pw) {
        boolean pass = false;
        DBConnect con = new PostgreCon();
        String qpw = "";

        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_SELECT_LOG);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next()){
                try {
                    qpw = AES256.decryptAES256(rs.getString("pw"), key);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
                if(pw.equals(qpw)){
                    pass = true;
                } else {
                    pass = false;
                }
            } else {
                pass = false;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return pass;
    }

    public boolean idCheck(String id){
        member cus = new member();
        DBConnect con = new PostgreCon();
        boolean pass = false;
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_SELECT_ONE);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next()){
                pass = false;
            } else {
                pass = true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return pass;
    }

    public int addCustom(member user) {
        int cnt = 0;
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            System.out.println(user.toString());
            pstmt = conn.prepareStatement(DBConnect.Member_INSERT);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getPw());
            pstmt.setString(3, user.getName());
            pstmt.setString(4, user.getTel());
            pstmt.setString(5, user.getEmail());
            pstmt.setString(6, user.getBirth());
            pstmt.setString(7, user.getAddress());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int updateCustom(member user) {
        int cnt = 0;
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_UPDATE);
            pstmt.setString(1, user.getPw());
            pstmt.setString(2, user.getTel());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getId());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int deleteCustom(String id){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_DELETE);
            pstmt.setString(1, id);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }
}
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
