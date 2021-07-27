package co.micol.prj.member.service;

import java.util.List;

import co.micol.prj.member.vo.MemberVO;

public interface MemberService {
	List<MemberVO> memberSelectList(); //전체리스트
	MemberVO memberSelect(MemberVO vo); //한명조회
	MemberVO memberLogin(MemberVO vo); //로그인 체크
	int memberInsert(MemberVO vo); //추가
	int memberDelete(MemberVO vo); //삭제 
	int memberUpdate(MemberVO vo); //변경
}
