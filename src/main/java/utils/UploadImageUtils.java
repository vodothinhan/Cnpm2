package utils;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class UploadImageUtils {
    public static String upload(HttpServletRequest request) {
        String imageName = null;
        try {
            Part filePart = request.getPart("image");
            if (filePart.getSize() != 0 && filePart.getContentType().startsWith("image")) {
                mkdirs();
                Path tempFile = Files.createTempFile(Paths.get(ConstUtils.IMAGE_PATH), "temp-", ".jpg");
                try (InputStream fileContent = filePart.getInputStream()) {
                    Files.copy(fileContent, tempFile, StandardCopyOption.REPLACE_EXISTING);
                }
                imageName = tempFile.getFileName().toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return imageName;
    }

    private static void mkdirs() {
        File imageDir = new File(ConstUtils.IMAGE_PATH);
        if (!imageDir.exists()) {
            imageDir.mkdirs();
        }
    }
}