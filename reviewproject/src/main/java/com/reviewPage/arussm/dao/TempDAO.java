package com.reviewPage.arussm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.reviewPage.arussm.vo.TempVO;

@Mapper
public interface TempDAO {
	
	public List<TempVO> selectTemp();
	
}
