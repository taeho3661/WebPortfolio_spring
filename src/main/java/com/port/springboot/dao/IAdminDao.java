package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BoardDto;
import com.port.springboot.dto.ItemDto;
import com.port.springboot.dto.AdminOrderDto;
import com.port.springboot.dto.UserDto;

@Mapper
@Component
public interface IAdminDao 
{
	public List<UserDto>userList();
	public int userDelete(String user_id);
	public List<AdminOrderDto>orderList();
	public int itemAdd(ItemDto dto);
	public List<ItemDto>itemList();
	public List<BoardDto>itemQna();
	public int itemDelete(int item_no);
	public int orderStateChange(AdminOrderDto dto);
	public ItemDto itemModify(int item_no);
	public int itemModifyAction(ItemDto dto);
	public BoardDto qnaView(int board_no);
	public int replySend(BoardDto dto);
}
