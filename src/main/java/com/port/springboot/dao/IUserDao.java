package com.port.springboot.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.UserDto;

@Mapper
@Component
public interface IUserDao 
{
	public UserDto userLogin(@Param("user_id") String user_id, @Param("user_pw") String user_pw);
	public UserDto modifyView(int user_no);
	public int modifyAction(UserDto dto);
}
