package com.port.springboot.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BoardDto;

@Mapper
@Component
public interface IBoardDao 
{
	public int inquiryAction(BoardDto dto );
}
