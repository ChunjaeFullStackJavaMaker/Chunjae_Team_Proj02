package com.shop.dto;

public class Product {
    private int pro_no;
    private String cate_id;
    private String pro_cate_no;
    private int price;
    private String title;
    private String description;
    private String pro_content;
    private String thumb;
    private String img_src;
    private String resdate;

    public int getPro_no() {
        return pro_no;
    }

    public void setPro_no(int pro_no) {
        this.pro_no = pro_no;
    }

    public String getCate_id() {
        return cate_id;
    }

    public void setCate_id(String cate_id) {
        this.cate_id = cate_id;
    }

    public String getPro_cate_no() {
        return pro_cate_no;
    }

    public void setPro_cate_no(String pro_cate_no) {
        this.pro_cate_no = pro_cate_no;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPro_content() {
        return pro_content;
    }

    public void setPro_content(String pro_content) {
        this.pro_content = pro_content;
    }

    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src;
    }

    public String getResdate() {
        return resdate;
    }

    public void setResdate(String resdate) {
        this.resdate = resdate;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pro_no=" + pro_no +
                ", cate_id='" + cate_id + '\'' +
                ", pro_cate_no='" + pro_cate_no + '\'' +
                ", price=" + price +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", pro_content='" + pro_content + '\'' +
                ", thumb='" + thumb + '\'' +
                ", img_src='" + img_src + '\'' +
                ", resdate='" + resdate + '\'' +
                '}';
    }
}
