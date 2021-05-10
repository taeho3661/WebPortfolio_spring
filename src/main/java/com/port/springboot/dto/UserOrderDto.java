package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class UserOrderDto 
{
	private int user_no;
	private int order_no;
	private Date order_date;
	private String item_img;
	private String item_name;
	private int order_count;
	private int order_price;
	private int order_state;
	private int item_no;
}
