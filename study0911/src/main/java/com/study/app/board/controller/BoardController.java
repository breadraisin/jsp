package com.study.app.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.app.board.domain.BoardVO;
import com.study.app.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired	BoardService boardService;
	
	//전체조회
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", boardService.getList());
	}
	
	//단건조회
	@GetMapping("/get")
	public void get(Model model, BoardVO board) {
		model.addAttribute("board", boardService.read(board));
	}
	
	//등록폼
	@GetMapping("/insert")
	public void insertForm() {}
	
	//등록처리
	@PostMapping("/insert")
	public String insert(BoardVO vo, RedirectAttributes rttr) {
		boardService.insert(vo);
		rttr.addFlashAttribute("result",vo.getBno());
		return "redirect:/board/list";
	}
	
	//수정폼
	@GetMapping("/modify")
	public void modifyForm(Model model, BoardVO board) {
		model.addAttribute("board",boardService.read(board));
	}
	
	//수정처리
	@PostMapping("/modify")
	public String modify(BoardVO vo, RedirectAttributes rttr) {
		int result = boardService.update(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/board/list";
	}
	
	//삭제
	@PostMapping("/delete")
	public String delete(BoardVO vo, RedirectAttributes rttr) {
		int result = boardService.delete(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}
}


