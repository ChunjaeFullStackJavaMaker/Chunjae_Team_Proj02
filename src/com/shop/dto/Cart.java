package com.shop.dto;

public class Cart {
<<<<<<< HEAD
    private int cart_no;
    private String cus_id;
    private int pro_no;
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

    public int getPro_no() {
        return pro_no;
    }

    public void setPro_no(int pro_no) {
        this.pro_no = pro_no;
=======
    private int cartno;     //카트번호
    private String cid;     //고객아이디
    private int pno;        //제품번호
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

    public int getPno() {
        return pno;
    }

    public void setPno(int pno) {
        this.pno = pno;
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
        return "Cart{" +
<<<<<<< HEAD
                "cart_no=" + cart_no +
                ", cus_id='" + cus_id + '\'' +
                ", pro_no=" + pro_no +
=======
                "cartno=" + cartno +
                ", cid='" + cid + '\'' +
                ", pno=" + pno +
>>>>>>> 6f8e8e48ba835bfa9d8ce7e392e7dbe058d0599d
                ", amount=" + amount +
                '}';
    }
}
