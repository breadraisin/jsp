package co.micol.prj.command;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;
import co.micol.prj.common.SHA_256;

public class CyperText implements Command {

	 @Override
	   public String execute(HttpServletRequest request, HttpServletResponse response) {
	      SHA_256 cyper = new SHA_256();
	      String str = "Hello1234";
	      try {
	         String cyperText = cyper.encrypt(str);
	         System.out.println("원문 : " + str);
	         System.out.println("암호문 : " + cyperText);
	      } catch (NoSuchAlgorithmException e) {
	         e.printStackTrace();
	      }
	      return null;
	   }

	}