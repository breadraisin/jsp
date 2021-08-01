package co.yedam.business.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.business.common.Command;
import co.yedam.business.sns.service.SnsService;
import co.yedam.business.sns.serviceImpl.SnsServiceImpl;
import co.yedam.business.sns.vo.CommentsVO;

public class InsertComment implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		SnsService dao = new SnsServiceImpl();
		CommentsVO vo = new CommentsVO();
		vo.setsNo(Integer.valueOf(request.getParameter("sNo")));
		vo.setcName(request.getParameter("cName"));
		vo.setcSubject(request.getParameter("cSubject"));
		int n = dao.commentsInsert(vo);
		String page="";
		if(n!=0){
			page = "snsList.do";
			
		}else {
			page = "boards/boardInsertFail";
		}
		
		return page;
	}

}
