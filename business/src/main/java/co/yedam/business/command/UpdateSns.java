package co.yedam.business.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.business.common.Command;
import co.yedam.business.sns.service.SnsService;
import co.yedam.business.sns.serviceImpl.SnsServiceImpl;
import co.yedam.business.sns.vo.SnsVO;

public class UpdateSns implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		SnsService dao = new SnsServiceImpl();
		SnsVO vo = new SnsVO();
		vo.setsTitle(request.getParameter("sTitle"));
		vo.setsContents(request.getParameter("sContent"));
		vo.setsNo(Integer.valueOf(request.getParameter("sNo")));
		int n = dao.snsUpdate(vo);
		String page="";
		if(n!=0){
			page = "snsList.do";
			
		}else {
			page = "boards/boardUpdateFail";
		}
		
		return page;
	}

}
