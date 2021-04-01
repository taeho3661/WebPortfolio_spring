package com.port.springboot.dto;

import lombok.Data;

@Data
public class CartDto 
{
	private int cart_id;
    private String user_id;
    private int item_id;
    private int amount;
    private int bil_id;
}
