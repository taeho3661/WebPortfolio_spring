package com.port.springboot.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDto 
{
	private int 	board_no;
	private int 	board_kind;
	private String 	item_name;
    private String 	board_name;
    private String 	board_writer;
	private Date 	board_write_date;
	private int 	item_no;
	private String 	board_content;
	
}
