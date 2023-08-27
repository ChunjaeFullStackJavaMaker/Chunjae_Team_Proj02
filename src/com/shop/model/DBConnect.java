package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface DBConnect {
    public Connection connect();
    public void close(PreparedStatement pstmt, Connection conn);
    public void close(ResultSet rs, PreparedStatement pstmt, Connection conn);
    
    //상품 목록
    final static String PRODUCT_SELECT_ALL = "select * from product order by pro_no";

    //카테고리별 목록
    final static String PRODUCT_SELECT_CATE = "select * from product where cate_id=? order by pro_no";

    //제품 상세보기
    final static String PRODUCT_SELECT_ONE = "select * from product where pro_no=?";

    //신상품
    final static String PRODUCT_SELECT_NEW = "select * from product order by pro_no desc limit 5";

    //베스트 상품
    final static String PRODUCT_SELECT_BEST = "select * from product where pro_no in (select pro_no from payment group by pro_no order by sum(amount) desc limit 5)";

    //상품 입고
    final static String PRODUCT_INSERT = "insert into product values(default, ?, '', ?, ?, ?, ?, ?, ?, default)";
    final static String CATEGORY_LOAD = "select * from category";

    //상품번호+상품카테고리 pro_cate_no
    final static String PRODUCT_INSERT_UPDATE = "update product set pro_cate_no = concat(cate_id,'-',pro_no) where pro_no in (select pro_no from product order by regdate desc limit 1)";


    //상품 추가 정보
    final static String PRODUCT_INFO = "insert into addinfo values(default, ?, ?, ?, default)";


    //상품 수정
    final static String PRODUCT_UPDATE = "update product set price=?, title=?, description=?, pro_content=?, thumb=?, img_src=? where pro_no=?";

    //상품 삭제
    final static String PRODUCT_DELETE = "delete from product where pro_no=?";

    //재고 조회
    final static String INVENTORY_SELECT_ALL = "select * from inventory order by pro_no desc";
    final static String INVENTORY_SELECT_ONE = "select * from inventory where pro_no=?";




}
