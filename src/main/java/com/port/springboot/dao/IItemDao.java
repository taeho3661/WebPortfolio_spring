package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BasketDto;
import com.port.springboot.dto.ItemDto;
import com.port.springboot.dto.OrderDto;
import com.port.springboot.dto.UserDto;

@Mapper
@Component
public interface IItemDao {
	
	public List<ItemDto> itemTypeList(String item_type);
	public List<ItemDto> itemTypeListSort(
			@Param("item_type")String item_type, @Param("sort_point")String sort_point, @Param("sort_method")String sort_method);
	public List<ItemDto> item(int item_no);
	public List<BasketDto> basket(int user_no);
	public int basketAdd(OrderDto dto);
	public int basketDelete(int order_no);
	public List<ItemDto> mainSearch(String item_name);
	public List<BasketDto> orderFromBasket(String[] order_no);
//	public int orderCompleted(String order_adr1, String[] order_no);
	public int orderCompleted(@Param("order_adr1") String order_adr1, @Param("order_adr2") String order_adr2, 
			@Param("order_adr3") String order_adr3, @Param("order_adr4") String order_adr4, 
			@Param("order_price") String order_price, @Param("order_memo") String order_memo, 
			@Param("covToStringOrder_no") String covToStringOrder_no);
}
