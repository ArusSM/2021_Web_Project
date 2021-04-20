package com.reviewPage.arussm.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;
import lombok.Getter;

@Data //@Getter @Setter @Tostring
public class TempVO {
	
	@JsonProperty
	@Getter
	private int id; //{id : 1, name : ''}
	
	@JsonProperty
	@Getter
	private String name;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
