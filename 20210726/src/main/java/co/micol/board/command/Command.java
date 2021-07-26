package co.micol.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//실제로 명령을 받아서 동작
public interface Command {
	public String execute(HttpServletRequest request, HttpServletResponse response);
}
