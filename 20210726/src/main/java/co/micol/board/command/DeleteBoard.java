package co.micol.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.board.service.BoardService;
import co.micol.board.serviceImpl.BoardServiceImpl;
import co.micol.board.vo.BoardVO;

public class DeleteBoard implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
<<<<<<< HEAD
		// TODO 게시글 삭제
=======
		// TODO 
>>>>>>> refs/remotes/origin/master
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setbId(Integer.valueOf(request.getParameter("bId")));
		int n = dao.boardDelete(vo);
		String page="";
		if(n!=0){
			page = "boardList.do";
			
		}else {
			page = "board/boardInsertFail";
		}
		
		return page;
	}
<<<<<<< HEAD
	}


=======
}
>>>>>>> refs/remotes/origin/master
