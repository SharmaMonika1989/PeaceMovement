
package peace.dao;


import peace.domain.PhotoGallery;
import java.util.List;


public interface PhotoGalleryDAO {
public abstract void save(PhotoGallery photoGallery);

    public abstract void delete(PhotoGallery photoGallery);

    public abstract void delete(Integer id);

    public abstract void update(PhotoGallery photoGallery);

    public abstract List<PhotoGallery> findAll(); 

    public abstract PhotoGallery findById(Integer id);
    
     public abstract List<PhotoGallery> findByProperty(String property, Object value);
    public abstract List<PhotoGallery> findAllStatusTrue(); 
    public abstract List<PhotoGallery> findAllByCategoryId(Integer categoryId); 
     
}
