package com.port.springboot.dto;

import lombok.Data;

@Data
public class UserDto 
{
	private int 	user_no;
    private String 	user_id;
    private String 	user_pw;
    private String 	user_name;
    private int 	user_post;
    private String 	user_adr1;
    private String 	user_adr2;
    private String 	user_adr3;
    private String 	user_adr4;
    private String 	user_phone;
    private String 	user_email;
    private int 	user_email_yn;
    private int 	user_score;
    private int 	user_rank;
    private int 	user_login_type;
    private int 	user_del_yn;
}
