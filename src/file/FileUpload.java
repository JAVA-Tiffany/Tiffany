package file;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUpload {
	public String[] fileUpload(String path,HttpServletRequest request) throws IOException {
		int size = 1024 * 1024 * 10; //10mbyte
		String file=null, oriFile=null;
		String[] files = new String[2];
		MultipartRequest multi = 
				new MultipartRequest(request, path, size, "utf-8",
						new DefaultFileRenamePolicy());
		System.out.println("request : "+request.getParameter("name"));
		System.out.println("multi : "+multi.getParameter("name"));
		file = multi.getFilesystemName("file");
		oriFile = multi.getOriginalFileName("file");
		files[0] = file; files[1] = oriFile;
		return files;
	}
}
