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
	public List<BoardDto>boardList();
	public BoardDto reviewView(int board_no);
}
