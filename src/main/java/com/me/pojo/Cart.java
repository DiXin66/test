package com.me.pojo;

public class Cart {
    private Integer id;

    private Integer userId;

    private Integer furnId;

    private String furnName;

    private Float price;

    private Integer number;

    private Float total;
    
    private String state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFurnId() {
        return furnId;
    }

    public void setFurnId(Integer furnId) {
        this.furnId = furnId;
    }

    public String getFurnName() {
        return furnName;
    }

    public void setFurnName(String furnName) {
        this.furnName = furnName;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Float getTotal() {
        return total;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
    
    
}