package co.yedam.business.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.business.common.Command;
import co.yedam.business.member.service.MemberService;
import co.yedam.business.member.serviceImpl.MemberServiceImpl;
import co.yedam.business.member.vo.MemberVO;

public class MemberList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		   MemberService dao = new MemberServiceImpl(); //모델을 호출
		      List<MemberVO> members = new ArrayList<MemberVO>();
		      members = dao.memberSelectList();   //데이터를 가져옴
		      request.setAttribute("members", members);   //페이지에 값을 전달하기 위해
		      return "member/memberList";      //보여줄 페이지 선택

	}

}
