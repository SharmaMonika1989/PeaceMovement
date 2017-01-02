
package peace.domain;

import org.springframework.web.multipart.MultipartFile;

public class PhotoGallery {
    private MultipartFile uploadFile;
    private Integer imageId;
    private String imageName;
    private String imageTittle;
    private Boolean status;
    private Category categoryId;

    public PhotoGallery() {
    }

    public PhotoGallery(Category categoryId) {
        this.categoryId = categoryId;
    }

    public PhotoGallery(Integer imageId) {
        this.imageId = imageId;
    }

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }

    public Integer getImageId() {
        return imageId;
    }

    public void setImageId(Integer imageId) {
        this.imageId = imageId;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImageTittle() {
        return imageTittle;
    }

    public void setImageTittle(String imageTittle) {
        this.imageTittle = imageTittle;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

   
}
