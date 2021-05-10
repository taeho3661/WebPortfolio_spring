package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BoardDto;
import com.port.springboot.dto.OrderDto;
import com.port.springboot.dto.UserOrderDto;

@Mapper
@Component
public interface IOrderDao 
{
	public List<UserOrderDto> userOrder(int user_no);
	public List<UserOrderDto> userOrderDate(@Param("user_no") int user_no, @Param("date") String date);
	public int orderDelete(int order_no);
	public UserOrderDto review_view(int order_no);
	
	
}
