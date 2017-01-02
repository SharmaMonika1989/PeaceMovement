
package peace.controller;

import peace.dao.CategoryDAO;
import peace.domain.Category;
import peace.utility.DateUtility;
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
public class CategoryMgmtController {
      @RequestMapping(value = "/category_mgmt.wpm", method = RequestMethod.GET)
    public ModelAndView categoryMgmt(HttpSession session) {
        ModelAndView mav = new ModelAndView("admin/category_mgmt");            
        Category command = new Category();
        mav.addObject("command", command);
        mav.addAllObjects(prepareModel());
        return mav;
    }
    @RequestMapping(value = "/saveCategory.wpm")
    public ModelAndView saveBlog(@ModelAttribute("command") Category command, HttpServletRequest request) throws IOException {
         ModelAndView mav = new ModelAndView();
        try {
            if (command.getCategoryId()!= null) {
                categoryDAO.update(command);
                mav.setViewName("redirect:category_mgmt.wpm?msg=Event updated Successfully");
            } else {
                categoryDAO.save(command);
                mav.setViewName("redirect:category_mgmt.wpm?msg=Save Event");
            }

        } catch (Exception e) {

            e.printStackTrace();
            mav.addObject("err", "Failed to save Event");
            mav.setViewName("admin/category_mgmt");
            mav.addObject("command", command);
        }
        return mav;
    }
      @RequestMapping(value = "/deleteCategory.wpm")
    public String deleteCategory(@RequestParam("categoryId") Integer categoryId) {
        categoryDAO.delete(categoryId);
        return "redirect:category_mgmt.wpm?msg=Event deleted successfully";
    }

    @RequestMapping(value = "/editCategory.wpm")
    public ModelAndView editCategory(@RequestParam("categoryId") Integer categoryId) {
        ModelAndView mav = new ModelAndView("admin/category_mgmt");
        Category command = categoryDAO.findById(categoryId);
        mav.addObject("command", command);
        mav.addAllObjects(prepareModel());
        return mav;
    }
       private Map prepareModel() {
        Map model = new HashMap();
        model.put("categoryList", categoryDAO.findAll());
        return model;
    }

   @Autowired
   CategoryDAO  categoryDAO;
    
}
