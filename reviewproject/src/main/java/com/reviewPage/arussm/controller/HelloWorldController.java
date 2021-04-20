package com.reviewPage.arussm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.reviewPage.arussm.service.GameService;
import com.reviewPage.arussm.service.TempService;
import com.reviewPage.arussm.vo.GameVO;
import com.reviewPage.arussm.vo.TempVO;

@Controller
public class HelloWorldController {
	
	@Autowired
	private TempService noservice;
	
	@Autowired
	private GameService service;
	

	@GetMapping("/")
	public String hello(Model model) {
		List<GameVO> list = service.selectGame();
		model.addAttribute("list", list);
		System.out.println(list.get(0));
		return "index.jsp";
	}
	
	@GetMapping("/db")
	public @ResponseBody List<TempVO> hello() {
		List<TempVO> list = noservice.selectTemp();
		System.out.println(list);
		return list;
	}
}
