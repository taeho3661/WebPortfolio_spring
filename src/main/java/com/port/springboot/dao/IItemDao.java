package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.ItemDto;

@Mapper
@Component
public interface IItemDao {
	
	public List<ItemDto> itemTypeList(String item_type);
	public List<ItemDto> item(int item_no);

}
