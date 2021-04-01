package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OrderDto 
{
    private int 	bil_id;
    private Date 	order_date;
    private String 	user_id;
    private String 	item_nm;
    private String 	order_state;   
}
