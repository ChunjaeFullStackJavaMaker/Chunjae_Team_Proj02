package com.shop.model;

import com.shop.dto.Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;
    String key = "%02x";

    public Member getMember(String id){
        Member mem = new Member();
        DBConnect con = new MariaDBCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.Member_SELECT_ONE);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if(rs.next()){
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
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return mem;

    }
}
