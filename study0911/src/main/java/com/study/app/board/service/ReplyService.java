package com.study.app.board.service;

import java.util.List;

import com.study.app.board.domain.ReplyVO;

public interface ReplyService {
		
	//전체조회
		public List<ReplyVO> getList(long bno);
		
		//단건조회
		public ReplyVO read(ReplyVO vo);
		
		//등록
		public int insert(ReplyVO vo);
		
		//수정
		public int update(ReplyVO vo);
		
		//삭제
		public int delete(ReplyVO vo);
}
