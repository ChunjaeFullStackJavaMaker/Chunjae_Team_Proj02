package com.shop.dto;

public class CartVO {
<<<<<<< HEAD
    private int cart_no;
    private String cus_id;
    private String NAME;
    private int pro_no;
    private String title;
    private int price;
    private int amount;

    public int getCart_no() {
        return cart_no;
    }

    public void setCart_no(int cart_no) {
        this.cart_no = cart_no;
    }

    public String getCus_id() {
        return cus_id;
    }

    public void setCus_id(String cus_id) {
        this.cus_id = cus_id;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public int getPro_no() {
        return pro_no;
    }

    public void setPro_no(int pro_no) {
        this.pro_no = pro_no;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
=======
    private int cartno;     //카트번호
    private String cid;     //고객아이디
    private String name;     //고객명
    private int pno;        //제품번호
    private String pro_name;   //제품번호
    private int amount;     //제품수량

    public int getCartno() {
        return cartno;
    }

    public void setCartno(int cartno) {
        this.cartno = cartno;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPno() {
        return pno;
    }

    public void setPno(int pno) {
        this.pno = pno;
    }

    public String getPro_name(String pro_name) {
        return this.pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "CartVO{" +
<<<<<<< HEAD
                "cart_no=" + cart_no +
                ", cus_id='" + cus_id + '\'' +
                ", NAME='" + NAME + '\'' +
                ", pro_no=" + pro_no +
                ", title='" + title + '\'' +
                ", price=" + price +
=======
                "cartno=" + cartno +
                ", cid='" + cid + '\'' +
                ", name='" + name + '\'' +
                ", pno=" + pno +
                ", pname='" + pro_name + '\'' +
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                ", amount=" + amount +
                '}';
    }
}
