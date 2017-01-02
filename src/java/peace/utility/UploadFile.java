/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.utility;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author JITTU
 */
public class UploadFile {

    public String uploadFile(String tempNameForUpload, MultipartFile uploadPhotoMultiPart, int x, int y, HttpServletRequest request) {
        String newFileName = "";

        if (uploadPhotoMultiPart != null && !uploadPhotoMultiPart.getOriginalFilename().equals("")) {
            if (uploadPhotoMultiPart.getSize() < 2048000) {
                try {

                    File file = new File(request.getRealPath("") + "/upload/" + tempNameForUpload);
                    if (file.exists()) {
                        file.delete();
                    }

                    InputStream fileInputStream = uploadPhotoMultiPart.getInputStream();
//                    tempNameForUpload = tempNameForUpload + uploadPhotoMultiPart.getOriginalFilename().substring(uploadPhotoMultiPart.getOriginalFilename().lastIndexOf("."), uploadPhotoMultiPart.getOriginalFilename().length());
                    String fileName = request.getRealPath("") + "/upload/" + tempNameForUpload;

                    OutputStream outputStream = new FileOutputStream(fileName);
                    int readBytes = 0;
                    byte[] buffer = new byte[2048000];
                    while ((readBytes = fileInputStream.read(buffer, 0, 2048000)) != -1) {
                        outputStream.write(buffer, 0, readBytes);
                    }
                    outputStream.close();
                    fileInputStream.close();

                    Image img1 = null;
                    BufferedImage tempJPG = null;
                    File newFileJPG = null;

                    img1 = ImageIO.read(new File(request.getRealPath("") + "/upload/" + tempNameForUpload));
                    tempJPG = ImageSizeResizer.resizeImage(img1, x, y);
                    newFileJPG = new File(request.getRealPath("") + "/upload/" + RemoveExtentionService.removeExtension(tempNameForUpload) + ".jpg");
                    ImageIO.write(tempJPG, "jpg", newFileJPG);
                    newFileName = RemoveExtentionService.removeExtension(tempNameForUpload) + ".jpg";

                } catch (Exception ex) {
                    ex.printStackTrace();
                    newFileName = "<ERROR>Fail to Upload " + ex.toString() + "</ERROR>";

                }
            }
        }
        return newFileName;
    }    
}
