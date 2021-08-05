package co.micol.prj.command;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.micol.prj.common.Command;
import co.micol.prj.image.service.FileInfoService;
import co.micol.prj.image.vo.FileInformationVO;

public class FileUpload implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 파일업로드
		FileInfoService fileDao = new FileInfoService();
		FileInformationVO vo = new FileInformationVO();
		int maxFileSize = 1024 * 1024 * 100;
		
		try {
			MultipartRequest part = new MultipartRequest(request, "d:/temp/", maxFileSize, "utf-8", new DefaultFileRenamePolicy());
			String upfileName = part.getFilesystemName("fileName");
			String orgfileName = part.getOriginalFileName("fileName");
			
			vo.setSubject(part.getParameter("subject"));
			vo.setFileName(orgfileName);
			vo.setDownFile(upfileName);
			
			int n = fileDao.fileInsert(vo);
			if(n != 0) {
				request.setAttribute("message", vo.getFileName() + "파일업로드 성공");
			}else {
				request.setAttribute("message", orgfileName + "파일업로드 실패");
			}
			} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "file/fileUploadResult";

	}

}
