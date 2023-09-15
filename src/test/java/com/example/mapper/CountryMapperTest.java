package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest //Autowired기동을 위해.

public class CountryMapperTest {
	
	@Autowired
	CountryMapper mapper;
	
	@Test
	void test1() {
		System.out.println(mapper);
		assertThat(mapper).isNotNull();
	}
	@Test
	
	void selectAll() {
		
		var list = mapper.selectAll();
	//	list.forEach( c -> System.out.println( "[" + c.getGovernmentForm()+"]");
	    
	}
	
	@Test
	void selectContinents() {
		var continents = mapper.selectContinents();
		System.out.println(continents);
		assertThat(continents.size()).isEqualTo(7);
	}
	
	@Test
	void selectAllByContinent() {
		var list = mapper.selectAllByContinent("Asia");
		list.forEach(c -> System.out.println(c.getContinent()));
		assertThat(list).allMatch(c -> c.getContinent().equals("Asia"));
		
		list = mapper.selectAllByContinent("Europe");
		assertThat(list).allMatch(c -> c.getContinent().equals("Europe"));
		
		list = mapper.selectAllByContinent("North America");
		assertThat(list).allMatch(c -> c.getContinent().equals("North America"));
		
		list = mapper.selectAllByContinent("Africa");
		assertThat(list).allMatch(c -> c.getContinent().equals("Africa"));
		
		list = mapper.selectAllByContinent("South America");
		assertThat(list).allMatch(c -> c.getContinent().equals("South America"));
		
		list = mapper.selectAllByContinent("Europe");
		assertThat(list).allMatch(c -> c.getContinent().equals("Europe"));
		
		list = mapper.selectAllByContinent("Europe");
		assertThat(list).allMatch(c -> c.getContinent().equals("Europe"));
		
		
		
		
		
	}
	
	
	@Test
	void allMatch() {
		var list = new ArrayList<Boolean>();
		list.add(true);
		list.add(true);
		list.add(true);
		assertThat(list).allMatch(e -> (boolean)e);
		
		var list2 = new ArrayList<Integer>();
		list2.add(10);
		list2.add(20);
		list2.add(30);
		assertThat(list2).allMatch(e -> e<40);
	}
	
	@Test
	void selectAllByContinentAndRegion() {
		var list = mapper.selectAllByContinentAndRegion("Asia", "Eastern Asia");
		assertThat(list).allMatch(c -> c.getContinent().equals("Asia") && c.getRegion().equals("Eastern Asia"));
	}
	
	
	
	
}
