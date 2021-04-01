package com.port.springboot.dto;

import lombok.Data;

@Data
public class ItemDto
{
	private int item_id;
    private String item_nm;
    private int price;
    private int stock;
    private String item_img;
    private int de_fee ;
    private String con_img;
}
