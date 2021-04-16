package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class AdminOrderDto 
{
    private int 	order_no;
    private Date 	order_date;
    private String 	user_id;
    private String 	item_name;
    private int 	order_state;   
}
