package com.study.app.board.service;

import java.util.List;

import com.study.app.board.domain.BoardVO;

public interface BoardService {
		
		//전체조회
		List<BoardVO> getList();
		
		//한건조회
		public BoardVO read(BoardVO vo);
		
		//등록
		public int insert(BoardVO vo);
		
		//수정
		public int update(BoardVO vo);
		
		//삭제
		public int delete(BoardVO vo);
}
