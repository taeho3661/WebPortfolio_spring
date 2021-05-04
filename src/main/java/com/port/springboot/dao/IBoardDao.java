package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BoardDto;
import com.port.springboot.dto.ItemDto;




@Mapper
@Component
public interface IBoardDao 
{
	public int inquiryAction(BoardDto dto );
	public List<BoardDto> reviewList();
	public BoardDto reviewView(int board_no);
	public int inquiryAdd(BoardDto dto);
	public List<BoardDto> inquiryList(String user_id);
	

}