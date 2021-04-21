package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BasketDto;
import com.port.springboot.dto.ItemDto;
import com.port.springboot.dto.OrderDto;

@Mapper
@Component
public interface IItemDao {
	
	public List<ItemDto> itemTypeList(String item_type);
	public List<ItemDto> item(int item_no);
	public List<BasketDto> basket(int user_no);
	public int basketAdd(OrderDto dto);
	public int basketDelete(int order_no);
	public List<ItemDto> mainSearch(String item_name);
	
}
