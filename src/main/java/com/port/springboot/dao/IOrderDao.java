package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.UserOrderDto;

@Mapper
@Component
public interface IOrderDao 
{
	public List<UserOrderDto> userOrder(int user_no);
	public int orderDelete(int order_no);
}
