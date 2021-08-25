package com.reviewPage.arussm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reviewPage.arussm.dao.GameDAO;
import com.reviewPage.arussm.vo.GameVO;

@Service
public class GameService {
	
	@Autowired
	private GameDAO dao;
	
	public List<GameVO> selectGame() {
		return dao.selectGame();
	}
	
	public List<GameVO> selectFpsGame() {
		return dao.selectFpsGame();
	}
	
	public List<GameVO> selectRpgGame() {
		return dao.selectRpgGame();
	}
	
	public int updateReco(int id) {
		
		return dao.updateReco(id);
	}
	
	public int updateNoreco(int id) {
		return dao.updateNoreco(id);
	}

}
