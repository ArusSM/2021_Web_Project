package com.reviewPage.arussm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.reviewPage.arussm.vo.GameVO;

@Mapper
public interface GameDAO {
	
	public List<GameVO> selectGame();
}
