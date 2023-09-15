package com.example.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.util.Alpha;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class AjaxController {

// AJAX(Asyncronous Javascript And XML)
	@GetMapping("/ajax")
	void ajax(Model model) {
		
		var rect = new ArrayList<ArrayList<Alpha>>();
		
		for(var i=0; i<20; i++) {
			rect.add(new ArrayList<Alpha>());
			for(var j=0; j<40; j++) {
				rect.get(i).add(new Alpha());
			}
		}
		
		model.addAttribute("surface", rect);
		
	}
	
	@GetMapping("/alpha")
	@ResponseBody
	Alpha generator() throws InterruptedException { 
//		Thread.sleep(10000); // 10초 딜레이 동기 비동기 테스트
		return new Alpha();
	}
//@GetMapping이 있어도 무조건 view로 포워드되지 않고.. 
//Alpha를 SON형태의 문자열로 변환하여 즉시 리턴 ( MVC로 동작하는 것이 아님.. RESTful서비스라한다)	
	
/*	@Autowired
	ObjectMapper json;
	String generator() throws JsonProcessingException {
		return json.writeValueAsString(new Alpha());
	}*/
// 위의 것의 수동버전.. 복잡하다. 
}
