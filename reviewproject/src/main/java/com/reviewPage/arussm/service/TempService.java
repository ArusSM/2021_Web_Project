package com.reviewPage.arussm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reviewPage.arussm.dao.TempDAO;
import com.reviewPage.arussm.vo.TempVO;

@Service
public class TempService {

	@Autowired
	private TempDAO dao;
	
	public List<TempVO> selectTemp() {
		return dao.selectTemp();
	}
	
}
