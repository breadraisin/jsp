package com.study.app.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.app.board.domain.ReplyVO;
import com.study.app.board.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired ReplyMapper replyMapper;
	
	@Override
	public List<ReplyVO> getList(long bno) {
		return replyMapper.getList(bno);
	}

	@Override
	public ReplyVO read(ReplyVO vo) {
		return replyMapper.read(vo);
	}

	@Override
	public int insert(ReplyVO vo) {
		return replyMapper.insert(vo);
	}

	@Override
	public int update(ReplyVO vo) {
		return replyMapper.update(vo);
	}

	@Override
	public int delete(ReplyVO vo) {
		return replyMapper.delete(vo);
	}

}
