package com.port.springboot.dto;

import lombok.Data;

@Data
public class ItemDto
{
	private int item_no;
	private String item_type;
    private String item_name;
    private int item_price;
    private int item_stock;
    private String item_img;
    private String item_info_img;
}
