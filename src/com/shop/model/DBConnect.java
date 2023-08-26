package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {
    final static String BOARD_SELECT_ALL = "select * from board order by bno desc";
    final static String BOARD_SELECT_ONE = "select * from board where bno=?";
    final static String BOARD_INSERT = "insert into board values (default,?,?,default,default);";
    final static String BOARD_SELECT_RANGE = "select * from board order by bno desc limit 5 offset ?";
    final static String BOARD_UPDATE = "update board set title=?, content=? where bno=?";
    final static String BOARD_DELETE = "delete from board where bno=?";
    final static String BOARD_COUNT = "select count(*) as cnt from board";
    final static String BOARD_COUNT_TITLE = "select count(*) as cnt from board where title like ?";
    final static String BOARD_COUNT_CONTENT = "select count(*) as cnt from board where content like ?";
    final static String BOARD_COUNT_ALL = "select count(*) as cnt from board where title like ? or content like ?";
    final static String BOARD_SELECT_TITLE_RANGE = "select * from board where title like ? order by resdate desc limit 5 offset ?";
    final static String BOARD_SELECT_CONTENT_RANGE = "select * from board where content like ? order by resdate desc limit 5 offset ?";
    final static String BOARD_SELECT_ALL_RANGE = "select * from board where title like ? or content like ? order by resdate desc limit 5 offset ?";

    final static String MEMBER_SELECT_ALL = "select * from member order by regdate desc";
    final static String MEMBER_SELECT_ONE = "select * from member where id=?";
    final static String MEMBER_SELECT_LOG = "select * from member where id=?";
    final static String MEMBER_INSERT = "insert into member values (?,?,?,default,default,?,?,?,default,?)";
    final static String MEMBER_UPDATE = "update member set pw=?,tel=?,email=? where id=?";
    final static String MEMBER_DELETE = "delete from member where id=?";
    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
}
