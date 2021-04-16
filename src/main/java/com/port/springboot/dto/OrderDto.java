package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto 
{
    private int 	order_no;
    private int 	user_no;
    private int 	item_no;
    private int 	order_count;
    private int 	order_state;
    private Date 	order_date;
    private String 	order_adr1;
    private String 	order_adr2;
    private String 	order_adr3;
    private String 	order_adr4;
    private int 	order_price;
    private String 	order_memo;
}
