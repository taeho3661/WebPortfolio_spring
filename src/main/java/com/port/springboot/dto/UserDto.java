package com.port.springboot.dto;

import lombok.Data;

@Data
public class UserDto 
{
	private int user_no;
    private String user_id;
    private String user_pw;
    private String user_nm;
    private int post;
    private String adr1 ;
    private String adr2;
    private String phone1;
    private int phone2;
    private int phone3;
    private String email;
    private int email_yn;
    private int score;
    private int rank;
    private int login_type;
    private int del_yn;
}
