package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class AdminQnaDto 
{
    private String 	item_nm;
    private String 	board_nm;
    private String 	writer;
	private Date 	write_date;
	private int		board_no;
}
