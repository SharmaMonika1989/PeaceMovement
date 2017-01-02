package peace.dao;

import peace.dao.PhotoGalleryDAO;
import peace.domain.Category;

import peace.domain.PhotoGallery;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

@Repository
public class PhotoGelleryDAOImpl extends NamedParameterJdbcDaoSupport implements PhotoGalleryDAO {

    @Autowired
    public void setDataSource2(DataSource dataSource) {
        setDataSource(dataSource);
    }

    @Override
    public void save(PhotoGallery photoGallery) {
        try {
            String q = "insert into photo_gallery(image_name,image_tittle,category_id,status)values(:image_name, :image_tittle, :category_id, :status)";        
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("image_name", photoGallery.getImageName());
            param.addValue("image_tittle", photoGallery.getImageTittle());
            Category category=new Category();
            System.out.println("cId"+photoGallery.getCategoryId().getCategoryId());
            param.addValue("category_id", photoGallery.getCategoryId().getCategoryId());
            param.addValue("status", photoGallery.getStatus());
            KeyHolder keyHolder = new GeneratedKeyHolder();
            getNamedParameterJdbcTemplate().update(q, param, keyHolder);
            photoGallery.setImageId(keyHolder.getKey().intValue());
        } catch (Exception ex) {
            RuntimeException runtimeException = new RuntimeException(ex);
        }
    }

    @Override
    public void delete(PhotoGallery photoGallery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Integer id) {
        String q = "DELETE FROM photo_gallery WHERE image_id = :image_id ";
        MapSqlParameterSource param = new MapSqlParameterSource();
        param.addValue("image_id", id);
        getNamedParameterJdbcTemplate().update(q, param);
    }

    @Override
    public void update(PhotoGallery photoGallery) {
        try {
            String q = " UPDATE photo_gallery "
                    + "SET                image_name= :image_name   "
                    + "                    , image_tittle = :image_tittle   "
                    + "                    , category_id= :category_id   "
                    + "                    , status= :status   "
                    + "WHERE             image_id= :image_id ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("image_id", photoGallery.getImageId());
            param.addValue("image_name", photoGallery.getImageName());
            param.addValue("image_tittle", photoGallery.getImageTittle());
            param.addValue("category_id", photoGallery.getCategoryId().getCategoryId());
            param.addValue("status", photoGallery.getStatus());

            getNamedParameterJdbcTemplate().update(q, param);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public List<PhotoGallery> findAll() {
        try {
            String query = "SELECT  p.image_id  "
                    + "             ,p.image_name  "
                    + "             ,  p.image_tittle  "
                    + "             ,  p.category_id  "
                    + "             ,  p.status  "
                    + "             ,  c.category_name as categoryName "
                    + "   FROM     photo_gallery as p"
                    + "  LEFT OUTER JOIN category c "
                    + "  ON p.category_id=c.category_id ";
                  
                 //  System.out.println(""+query);
            MapSqlParameterSource param = new MapSqlParameterSource();
            List<PhotoGallery> photogallery = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<PhotoGallery>() {

                public PhotoGallery mapRow(ResultSet rs, int rowNo) throws SQLException {
                    PhotoGallery photogallery = new PhotoGallery();
                     photogallery.setImageId(rs.getInt("image_id"));
                      if (rs.getObject("category_id") != null) {
                        Category  category = new Category();
                        category.setCategoryId(rs.getInt("category_id"));
                        category.setCategoryName(rs.getString("categoryName"));
                        photogallery.setCategoryId(category);
                    }
                    photogallery.setImageName(rs.getString("image_name"));
                    photogallery.setImageTittle(rs.getString("image_tittle"));                   
                    photogallery.setStatus(rs.getBoolean("status"));
                    return photogallery;
                }
            });
        return photogallery;
        }
        catch(Exception ex){
           return null;
        }
     
           
    }

    @Override
    public PhotoGallery findById(Integer image_id) {
        try {
  String query = "SELECT  p.image_id  "
                    + "             ,p.image_name  "
                    + "             ,  p.image_tittle  "
                    + "             ,  p.category_id  "
                    + "             ,  p.status  "
                    + "             ,  c.category_name as categoryName "
                    + "   FROM     photo_gallery as p"
                    + "  LEFT OUTER JOIN category c "
                    + "  ON p.category_id=c.category_id "
                    + "     WHERE    image_id = :image_id";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("image_id", image_id);
            return (PhotoGallery) getNamedParameterJdbcTemplate().queryForObject(query, param, new RowMapper<PhotoGallery>() {
                public PhotoGallery mapRow(ResultSet rs, int rowNo) throws SQLException {
                    PhotoGallery photogallery = new PhotoGallery();
                    photogallery.setImageId(rs.getInt("image_id"));
                    photogallery.setImageName(rs.getString("image_name"));
                    photogallery.setImageTittle(rs.getString("image_tittle"));
                    if (rs.getObject("category_id") != null) {
                        Category  category = new Category();
                        category.setCategoryId(rs.getInt("category_id"));
                        category.setCategoryName(rs.getString("categoryName"));
                        photogallery.setCategoryId(category);
                    }
                    photogallery.setStatus(rs.getBoolean("status"));
                    return photogallery;
                }
            });
        } catch (DataAccessException ex) {
            return null;
        }
    }

    @Override
    public List<PhotoGallery> findByProperty(String property, Object value) {
        try {
            String query = "select image_id"
                    + "              ,image_name"
                    + "              ,image_tittle"
                    + "              ,category_id"
                    + "              ,status"
                    + "     FROM      photo_gallery"                
                    + "   WHERE      " + property + " =:value ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("value", value);
            List<PhotoGallery> photogallery = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<PhotoGallery>() {

                public PhotoGallery mapRow(ResultSet rs, int rowNo) throws SQLException {
                     PhotoGallery photogallery = new PhotoGallery();
                    photogallery.setImageId(rs.getInt("image_id"));
                    photogallery.setImageName(rs.getString("image_name"));
                    photogallery.setImageTittle(rs.getString("image_tittle"));
                    
                    photogallery.setStatus(rs.getBoolean("status"));
                    return photogallery;
                }
            });
            return photogallery;
        } catch (DataAccessException ex) {
            return null;
        }
    }

    @Override
    public List<PhotoGallery> findAllStatusTrue() {
        try {
            String query = "SELECT  p.image_id  "
                    + "             ,p.image_name  "
                    + "             ,  p.image_tittle  "
                    + "             ,  p.category_id  "
                    + "             ,  p.status  "
                    + "             ,  c.category_name as categoryName "
                    + "   FROM     photo_gallery as p"
                    + "  LEFT OUTER JOIN category c "
                    + "  ON p.category_id=c.category_id "
                    + "      WHERE      status=1 "
                    +"      GROUP BY p.category_id";
                  
                 //  System.out.println(""+query);
            MapSqlParameterSource param = new MapSqlParameterSource();
            List<PhotoGallery> photogallery = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<PhotoGallery>() {

                public PhotoGallery mapRow(ResultSet rs, int rowNo) throws SQLException {
                    PhotoGallery photogallery = new PhotoGallery();
                     photogallery.setImageId(rs.getInt("image_id"));
                      if (rs.getObject("category_id") != null) {
                        Category  category = new Category();
                        category.setCategoryId(rs.getInt("category_id"));
                        category.setCategoryName(rs.getString("categoryName"));
                        photogallery.setCategoryId(category);
                    }
                    photogallery.setImageName(rs.getString("image_name"));
                    photogallery.setImageTittle(rs.getString("image_tittle"));                   
                    photogallery.setStatus(rs.getBoolean("status"));
                    return photogallery;
                }
            });
        return photogallery;
        }
        catch(Exception ex){
           return null;
        }
     
    }
    
    @Override
    public List<PhotoGallery> findAllByCategoryId(Integer categoryId) {
        try {
            String query = "SELECT  p.image_id  "
                    + "             ,p.image_name  "
                    + "             ,  p.image_tittle  "
                    + "             ,  p.category_id  "
                    + "             ,  p.status  "
                    + "             ,  c.category_name as categoryName "
                    + "   FROM     photo_gallery as p"
                    + "  LEFT OUTER JOIN category c "
                    + "  ON p.category_id=c.category_id "
                    + "      WHERE       p.category_id=:categoryId";
                  
                 //  System.out.println(""+query);
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("categoryId", categoryId);
            List<PhotoGallery> photogallery = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<PhotoGallery>() {

                public PhotoGallery mapRow(ResultSet rs, int rowNo) throws SQLException {
                    PhotoGallery photogallery = new PhotoGallery();
                     photogallery.setImageId(rs.getInt("image_id"));
                      if (rs.getObject("category_id") != null) {
                        Category  category = new Category();
                        category.setCategoryId(rs.getInt("category_id"));
                        category.setCategoryName(rs.getString("categoryName"));
                        photogallery.setCategoryId(category);
                    }
                    photogallery.setImageName(rs.getString("image_name"));
                    photogallery.setImageTittle(rs.getString("image_tittle"));                   
                    photogallery.setStatus(rs.getBoolean("status"));
                    return photogallery;
                }
            });
        return photogallery;
        }
        catch(Exception ex){
           return null;
        }
    }
    }


