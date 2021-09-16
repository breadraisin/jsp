package com.study.app.board.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class BoardVO {
	
	private long bno;
	private String title;
	private String content;
	private String writer;
	@JsonFormat(pattern = "yyyy/MM/dd")
	private Date regDate;
}
