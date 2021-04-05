package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.AdminQnaDto;
import com.port.springboot.dto.BilDto;
import com.port.springboot.dto.ItemDto;
import com.port.springboot.dto.OrderDto;
import com.port.springboot.dto.UserDto;

@Mapper
@Component
public interface IAdminDao 
{
	public List<UserDto>userList();
	public int userDelete(String user_id);
	public List<OrderDto>orderList();
	public int itemAdd(ItemDto dto);
	public List<ItemDto>itemList();
	public List<AdminQnaDto>itemQna();
}
