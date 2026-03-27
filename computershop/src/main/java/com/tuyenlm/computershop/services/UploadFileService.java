package com.tuyenlm.computershop.services;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadFileService {
    public String saveFile(MultipartFile avatarFile, String subDirectory) {
        String fileName = null;
        try {
            if (avatarFile != null && !avatarFile.isEmpty()) {
                String rootPath = System.getProperty("user.dir"); // Get the root path of the project
                Path uploadPath = Paths.get(rootPath, "src", "main", "webapp", "resources", "images", subDirectory); // Define
                // the
                // upload
                // path
                // for
                // avatars
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }
                fileName = System.currentTimeMillis() + "_" + avatarFile.getOriginalFilename();
                Path filePath = uploadPath.resolve(fileName);
                Files.copy(avatarFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return fileName;
    }
}
