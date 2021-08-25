package com.reviewPage.arussm.vo;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;

@Data
public class GameVO {
	
	@JsonProperty
	private int id;
	@JsonProperty
	private String title;
	@JsonProperty
	private String img;
	@JsonProperty
	private String gameLink;
	@JsonProperty
	private Date releaseDate;
	@JsonProperty
	private String multiple;
	@JsonProperty
	private int recom;
	@JsonProperty
	private int norecom;
	@JsonProperty
	private String content;
	@JsonProperty
	private String category;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getGameLink() {
		return gameLink;
	}
	public void setGameLink(String gameLink) {
		this.gameLink = gameLink;
	}
	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getMultiple() {
		return multiple;
	}
	public void setMultiple(String multiple) {
		this.multiple = multiple;
	}
	public int getRecom() {
		return recom;
	}
	public void setRecom(int recom) {
		this.recom = recom;
	}
	public int getNorecom() {
		return norecom;
	}
	public void setNorecom(int norecom) {
		this.norecom = norecom;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
