package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BilDto
{
	private int 	bil_id;
    private String 	user_id;
    private String 	order_state;
    private String 	receive_nm;
    private int 	receive_tel;
	private int 	post;
    private String 	adr1;
    private String 	adr2;
    private String 	ship_memo;
    private int 	total_price;
	private Date 	order_date;
}
