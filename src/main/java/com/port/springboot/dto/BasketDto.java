package com.port.springboot.dto;

import lombok.Data;

@Data
public class BasketDto
{
	private int		order_no;
	private String 	item_img;
	private String 	item_name;
	private int		order_count;
	private int		order_price;
}
