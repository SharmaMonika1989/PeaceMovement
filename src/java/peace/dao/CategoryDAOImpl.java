package peace.dao;

import peace.dao.CategoryDAO;
import peace.domain.Category;
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
public class CategoryDAOImpl extends NamedParameterJdbcDaoSupport implements CategoryDAO {

    @Autowired
    public void setDataSource2(DataSource dataSource) {
        setDataSource(dataSource);
    }

    @Override
    public void save(Category category) {
        try {
            String q = "insert into category(category_name)values(:category_name)";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("category_name", category.getCategoryName());
            KeyHolder keyHolder = new GeneratedKeyHolder();
            getNamedParameterJdbcTemplate().update(q, param, keyHolder);
            category.setCategoryId(keyHolder.getKey().intValue());
        } catch (Exception ex) {
            RuntimeException runtimeException = new RuntimeException(ex);
        }
    }

    @Override
    public void delete(Category category) {

    }

    @Override
    public void delete(Integer id) {
        String q = "delete from category where category_id = :category_id";
        MapSqlParameterSource param = new MapSqlParameterSource();
        param.addValue("category_id", id);
        getNamedParameterJdbcTemplate().update(q, param);

    }

    @Override
    public void update(Category category) {
        try {
            String q = "update category set category_name = :category_name where category_id = :category_id";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("category_id", category.getCategoryId());
            param.addValue("category_name", category.getCategoryName());
            getNamedParameterJdbcTemplate().update(q, param);
        } catch (Exception ex) {
            ex.printStackTrace();

        }

    }

    @Override
    public List<Category> findAll() {
        try {
            String query = "SELECT category_id,category_name FROM category";

            MapSqlParameterSource param = new MapSqlParameterSource();
            List<Category> category = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<Category>() {

                public Category mapRow(ResultSet rs, int rowNo) throws SQLException {
                    Category cat = new Category();
                    cat.setCategoryId(rs.getInt("category_id"));
                    cat.setCategoryName(rs.getString("category_name"));

                    return cat;
                }
            });
            return category;
        } catch (Exception ex) {
            return null;
        }
    }

    @Override
    public Category findById(Integer id) {
        try {
            String query = "SELECT  category_id  "
                    + "             ,category_name  "
                    + "   FROM       category "
                    + "   WHERE    category_id  = :id ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("id", id);
            return (Category) getNamedParameterJdbcTemplate().queryForObject(query, param, new RowMapper<Category>() {

                public Category mapRow(ResultSet rs, int rowNo) throws SQLException {
                    Category cat = new Category();
                    cat.setCategoryId(rs.getInt("category_id"));
                    cat.setCategoryName(rs.getString("category_name"));
                    return cat;
                }
            });
        } catch (DataAccessException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Category> findByProperty(String property, Object value) {
         try {
           String query = "SELECT  category_id  "
                    + "             ,category_name  "
                    + "   FROM       category "              
                    + "   WHERE      " + property + " =:value ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("value", value);
            List<Category> cat = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<Category>() {

                public Category mapRow(ResultSet rs, int rowNo) throws SQLException {
                     Category cat = new Category();
                    cat.setCategoryId(rs.getInt("cateory_id"));
                    cat.setCategoryName(rs.getString("category_name"));
                    return cat;
                }
            });
            return cat;
        } catch (DataAccessException ex) {
            return null;
        }
    }
   

}
