package com.port.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import com.port.springboot.dto.BoardDto;


@Mapper
@Component
public interface IBoardDao 
{
	public int inquiryAction(BoardDto dto );
	public List<BoardDto> reviewList(int item_no);
	public List<BoardDto> review_List();
	public BoardDto reviewView(int board_no);
	public int inquiryAdd(BoardDto dto);
	public List<BoardDto> inquiryList(String user_id);
	public List<BoardDto> announList();
	public int reviewAdd(BoardDto dto);	
	public BoardDto review_view(int order_no);
}