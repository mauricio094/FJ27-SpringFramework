package br.com.casadocodigo.loja.infra;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileSaver {
	public String write(String baseFolder, MultipartFile file) {
		String homePath = System.getProperty("user.home");
		String baseFolderPath = homePath + "/" + baseFolder;
		String filePath = baseFolderPath + "/" + file.getOriginalFilename();
		try {
			file.transferTo(new File(filePath));
			return filePath;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

}
