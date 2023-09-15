package com.example.json;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.example.util.Alpha;
import com.example.util.Color;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectMapperTest {
	
	ObjectMapper mapper = new ObjectMapper();
	
	@Test
	void stringify() throws JsonProcessingException {
		var alpha = new Alpha();
		System.out.println(alpha);  //XML이나 JSON의 문자열은 아니다.. Alpha.java에 있는 메소드로 표현
		var json = mapper.writeValueAsString(alpha); //알파를 JSON문자열로..
		System.out.println(json);   //JSON표기, 형식화된 문자열(표준적인 규칙이 있음)
	}
	
	@Test
    void parse() throws JsonMappingException, JsonProcessingException {
    	var json = """
    			   {
    			     "line":200,
    			     "column":400,
					 "fg":"Black",
					 "bg":"Red",
					 "ch":"X"
					}
					""";
    	
    	var alpha = mapper.readValue(json, Alpha.class); //JSON을 자바로..
    	System.out.println(alpha.getLine());
    	System.out.println(alpha);

    }
	
	@Test
	void array() throws JsonProcessingException {
		int[] arr = {10, 20, 30};
		System.out.println(mapper.writeValueAsString(arr));
		
		Alpha[] arr2 = {new Alpha(), new Alpha()};
		System.out.println(mapper.writeValueAsString(arr2));
		
		var list = new ArrayList<Alpha>();
		list.add(new Alpha());
		list.add(new Alpha());
		System.out.println(mapper.writeValueAsString(list));
		
		var map = new HashMap<String, Object>();
		map.put("line", 200);
		map.put("column", 400);
		map.put("fg", Color.Black);
		map.put("bg", Color.Red);
		map.put("ch", 'A');
		System.out.println(mapper.writeValueAsString(map));
	}
	
}
