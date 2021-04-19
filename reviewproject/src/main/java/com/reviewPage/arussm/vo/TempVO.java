package com.reviewPage.arussm.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class TempVO {
	
	@JsonProperty
	private int id;
	
	@JsonProperty
	private String name;
	
}
