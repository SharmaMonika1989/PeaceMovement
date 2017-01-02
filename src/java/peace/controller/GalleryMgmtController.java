package peace.controller;

import peace.dao.CategoryDAO;
import peace.dao.PhotoGalleryDAO;
import peace.domain.PhotoGallery;
import peace.utility.ImageSizeResizer;
import peace.utility.RemoveExtentionService;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GalleryMgmtController {

    @RequestMapping(value = "/galleryMgmt.wpm", method = RequestMethod.GET)
    public ModelAndView recentGallery(HttpSession session) {
        ModelAndView mav = new ModelAndView("admin/galleryMgmt");
        PhotoGallery command = new PhotoGallery();
        mav.addObject("command", command);
        mav.addAllObjects(prepareModel());
        return mav;
    }

    @RequestMapping(value = "/saveGallery.wpm", method = RequestMethod.POST)
    public ModelAndView saveGallery(@ModelAttribute("command") PhotoGallery command, HttpServletRequest request) throws IOException {
        ModelAndView mav = new ModelAndView();
        
        String tempNameForUpload;
        if (command.getImageId() != null && !"".equals(command.getImageName())) {
            PhotoGallery img_name = photoGalleryDAO.findById(command.getImageId());
            String img = img_name.getImageName();
            if (img != null) {
                img = RemoveExtentionService.removeExtension(img);
                tempNameForUpload = "" + img + ".jpg";
            } else {
                tempNameForUpload = "" + command.getUploadFile().getOriginalFilename();
            }

        } else {
            tempNameForUpload = "" + command.getUploadFile().getOriginalFilename();
        }
        MultipartFile uploadPhotoMultiPart = command.getUploadFile();
        if (uploadPhotoMultiPart != null && !uploadPhotoMultiPart.getOriginalFilename().equals("")) {
            if (uploadPhotoMultiPart.getSize() < 2048000) {
                try {

                    File file = new File(request.getRealPath("") + "/upload/" + command.getImageName());
                    if (file.exists()) {
                        file.delete();
                    }

                    InputStream fileInputStream = uploadPhotoMultiPart.getInputStream();
                    //tempNameForUpload = tempNameForUpload + uploadPhotoMultiPart.getOriginalFilename().substring(uploadPhotoMultiPart.getOriginalFilename().lastIndexOf("."), uploadPhotoMultiPart.getOriginalFilename().length());
                    String fileName = request.getRealPath("") + "/upload/" + tempNameForUpload;

                    OutputStream outputStream = new FileOutputStream(fileName);
                    int readBytes = 0;
                    byte[] buffer = new byte[2048000];
                    while ((readBytes = fileInputStream.read(buffer, 0, 2048000)) != -1) {
                        outputStream.write(buffer, 0, readBytes);

                    }
                    command.setImageName(tempNameForUpload);
                    outputStream.close();
                    fileInputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    mav.addObject("err", "Failed to save Image");
                    mav.setViewName("admin/galleryMgmt");
                    mav.addObject("command", command);
                }

            }
            Image img1 = null;
            BufferedImage tempJPG = null;
            File newFileJPG = null;

            img1 = ImageIO.read(new File(request.getRealPath("") + "/upload/" + command.getImageName()));
            tempJPG = ImageSizeResizer.resizeImage(img1, 640, 426);
            newFileJPG = new File(request.getRealPath("") + "/upload/" + RemoveExtentionService.removeExtension(command.getImageName()) + ".jpg");
            ImageIO.write(tempJPG, "jpg", newFileJPG);
            command.setImageName(RemoveExtentionService.removeExtension(command.getImageName()) + ".jpg");
        }

        if (command.getImageId() != null) {
            command.setImageId(command.getImageId());
            if (command.getImageName() != null) {
                photoGalleryDAO.update(command);
            } else {
                PhotoGallery img_name = photoGalleryDAO.findById(command.getImageId());
                String img = img_name.getImageName();
                command.setImageName(img);
                photoGalleryDAO.update(command);
            }
            mav.setViewName("redirect:galleryMgmt.wpm?msg=Gallery updated Successfully");

        } else {

            photoGalleryDAO.save(command);
            mav.addObject("msg", "Gallery saved Successfully");
            mav.setViewName("redirect:galleryMgmt.wpm");
            System.out.println("hello");
            //mav.setViewName("redirect:galleryMgmt.wpm?msg=Gallery saved Successfully");
        }
        return mav;
    }

    @RequestMapping(value = "/deleteGallery.wpm")
    public String deleteGallery(@RequestParam("imageId") Integer imageId, HttpServletRequest request) {
        PhotoGallery img_name = photoGalleryDAO.findById(imageId);
        String img = img_name.getImageName();
        File file = new File(request.getRealPath("") + "/upload/" + img);
        if (file.exists()) {
            file.delete();
        }
        photoGalleryDAO.delete(imageId);
        try {
            return "redirect:galleryMgmt.wpm?msg=Gallery deleted successfully";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:galleryMgmt.wpm?msg=Image not found";
        }
    }

    @RequestMapping(value = "/editGallery.wpm")
    public ModelAndView editGallery(@RequestParam("imageId") Integer imageId) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/galleryMgmt");
        PhotoGallery command = photoGalleryDAO.findById(imageId);
        mav.addObject("command", command);
        mav.addAllObjects(prepareModel());
        return mav;
    }
    
    
     @RequestMapping(value = "/gallery.wpm", method = RequestMethod.GET)
    public ModelAndView gallery(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/gallery");
        mav.addAllObjects(prepareModel());
        return mav;
    }
    
        
          @RequestMapping(value = "/sub_gallery.wpm", method = RequestMethod.GET)
    public ModelAndView GuruPurnima(@RequestParam("categoryId") Integer categoryId,HttpSession session) {
        ModelAndView mav = new ModelAndView("user/sub_Gallery");
         mav.addObject("photoGalleryListCategoryWise", photoGalleryDAO.findAllByCategoryId(categoryId));
        mav.addAllObjects(prepareModel());
        return mav;
    }

    private Map prepareModel() {
        Map model = new HashMap();
        model.put("photoGalleryList", photoGalleryDAO.findAll());
        model.put("photoGalleryListStatus", photoGalleryDAO.findAllStatusTrue());
        model.put("categoryList", categoryDAO.findAll());

        return model;
    }

    @Autowired
    PhotoGalleryDAO photoGalleryDAO;
    @Autowired
    CategoryDAO categoryDAO;

}
