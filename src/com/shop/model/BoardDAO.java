package com.shop.model;

import com.shop.dto.Board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
    static Connection conn = null;
    static PreparedStatement pstmt = null;
    static ResultSet rs = null;

    public List<Board> getBoardList(){
        List<Board> boaList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_ALL);
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board boa = new Board();
                boa.setBno(rs.getInt("bno"));
                boa.setTitle(rs.getString("title"));
                boa.setContent(rs.getString("content"));
                boa.setResdate(rs.getString("resdate"));
                boa.setCnt(rs.getInt("cnt"));
                boaList.add(boa);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return boaList;
    }

    public List<Board> getBoardList(int bno){
        List<Board> boaList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_RANGE);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board boa = new Board();
                boa.setBno(rs.getInt("bno"));
                boa.setTitle(rs.getString("title"));
                boa.setContent(rs.getString("content"));
                boa.setResdate(rs.getString("resdate"));
                boa.setCnt(rs.getInt("cnt"));
                boaList.add(boa);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return boaList;
    }

    public Board getBoard(int bno){
        Board boa = new Board();
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        try {
            pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_ONE);
            pstmt.setInt(1, bno);
            rs = pstmt.executeQuery();

            if(rs.next()){
                boa.setBno(rs.getInt("bno"));
                boa.setTitle(rs.getString("title"));
                boa.setContent(rs.getString("content"));
                boa.setResdate(rs.getString("resdate"));
                boa.setCnt(rs.getInt("cnt"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
       return boa;
    }

    public int addBoard(Board boa){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        try {
            pstmt = conn.prepareStatement(DBConnect.BOARD_INSERT);
            pstmt.setString(1, boa.getTitle());
            pstmt.setString(2, boa.getContent());
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int updateBoard(Board boa){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "update board set title=?, content=? where bno=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "수정 DAO테스트1");
            pstmt.setString(2, "수정 DAO테스트내용입니다.1");
            pstmt.setInt(3, 3);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int deleteBoard(int bno){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        String sql = "delete from board where bno=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, 5);
            cnt = pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(pstmt, conn);
        }
        return cnt;
    }

    public int getCount(){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        try {
            pstmt = conn.prepareStatement(DBConnect.BOARD_COUNT);
            rs = pstmt.executeQuery();
            if(rs.next()){
                cnt = rs.getInt("cnt");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return cnt;
    }

    public int getCount(String searchType, String kwd){
        int cnt = 0;
        DBConnect con = new PostgreCon();
        conn = con.connect();
        if(conn!=null){
            System.out.println("PostgreSQL 연결 성공");
        }

        try {
            if(searchType.equals("title")) {
                pstmt = conn.prepareStatement(DBConnect.BOARD_COUNT_TITLE);
                pstmt.setString(1, "%" + kwd + "%");
            } else if(searchType.equals("content")){
                pstmt = conn.prepareStatement(DBConnect.BOARD_COUNT_CONTENT);
                pstmt.setString(1, "%" + kwd + "%");
            } else {
                pstmt = conn.prepareStatement(DBConnect.BOARD_COUNT_ALL);
                pstmt.setString(1, "%" + kwd + "%");
                pstmt.setString(2, "%" + kwd + "%");
            }
            rs = pstmt.executeQuery();
            if(rs.next()){
                cnt = rs.getInt("cnt");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return cnt;
    }

    public List<Board> getBoardList(String searchType, String kwd, int bno) {
        List<Board> boaList = new ArrayList<>();
        DBConnect con = new PostgreCon();
        try {
            conn = con.connect();
            if(searchType.equals("title")) {
                pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_TITLE_RANGE);
                pstmt.setString(1, "%"+kwd+"%");
                pstmt.setInt(2, bno);
            } else if(searchType.equals("content")){
                pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_CONTENT_RANGE);
                pstmt.setString(1, "%"+kwd+"%");
                pstmt.setInt(2, bno);
            } else {
                pstmt = conn.prepareStatement(DBConnect.BOARD_SELECT_ALL_RANGE);
                pstmt.setString(1, "%"+kwd+"%");
                pstmt.setString(2, "%"+kwd+"%");
                pstmt.setInt(3, bno);
            }
            rs = pstmt.executeQuery();
            while(rs.next()){
                Board boa = new Board();
                boa.setBno(rs.getInt("bno"));
                boa.setTitle(rs.getString("title"));
                boa.setContent(rs.getString("content"));
                boa.setResdate(rs.getString("resdate"));
                boa.setCnt(rs.getInt("cnt"));
                boaList.add(boa);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            con.close(rs, pstmt, conn);
        }
        return boaList;
    }

    public int getStartPost(String searchType, String kwd){
        int startPost = 0;
        return startPost;
    }
}
