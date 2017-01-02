  
package peace.dao;


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
import peace.domain.Contact;

/**
 *
 * @author mitpl
 */

@Repository
public class ContactDAOImpl extends NamedParameterJdbcDaoSupport implements ContactDAO {

    @Autowired
    public void setDataSource2(DataSource dataSource) {
        setDataSource(dataSource);
    }

    @Override
    public void save(Contact contact) {
        try {
            String q = "INSERT INTO contacts ( f_name"
                    + "                     ,l_name"
                    + "                     ,email"
                    + "                     ,org_name"
                    + "                     ,country"
                    + "                     ,city"
                    + "                     ,message)"
                    + "          VALUES (   :f_name"
                    + "                     ,:l_name"
                    + "                     ,:email"
                    + "                     ,:org_name"
                    + "                     ,:country"
                    + "                     ,:city"
                    + "                     ,:message)";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("f_name",contact.getfName());
            param.addValue("l_name", contact.getlName());
            param.addValue("email", contact.getEmail());
            param.addValue("org_name",contact.getOrgName());
            param.addValue("country",contact.getCountry());
            param.addValue("city",contact.getCity());
            param.addValue("message",contact.getMessage());
            KeyHolder keyHolder = new GeneratedKeyHolder();
            getNamedParameterJdbcTemplate().update(q, param, keyHolder);
            contact.setContactId(keyHolder.getKey().intValue());
        } catch (Exception ex) {
            RuntimeException runtimeException = new RuntimeException(ex);
        }
    }

    public void delete(Contact contact) {
       delete(contact.getContactId());
    }

    public void delete(Integer id) {
        String q = "DELETE FROM contacts WHERE contact_id = :contact_id ";
        MapSqlParameterSource param = new MapSqlParameterSource();
        param.addValue("contact_id", id);
        getNamedParameterJdbcTemplate().update(q, param);
    }

    public List<Contact> findAll() {
        try {
            String query = "SELECT   contact_id"
                    + "                     ,f_name"
                    + "                     ,l_name"
                    + "                     ,email"
                    + "                     ,org_name"
                    + "                     ,country"
                    + "                     ,city"
                    + "                     ,message"                                   
                    + "   FROM     contacts " ;
                    
            MapSqlParameterSource param = new MapSqlParameterSource();
           
            List<Contact> contact = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<Contact>() {

                public Contact mapRow(ResultSet rs, int rowNo) throws SQLException {
                    Contact contact = new Contact();
                    contact.setContactId(rs.getInt("contact_id"));
                    contact.setfName(rs.getString("f_name"));
                    contact.setlName(rs.getString("l_name"));
                    contact.setEmail(rs.getString("email"));
                    contact.setOrgName(rs.getString("org_name"));
                    contact.setCountry(rs.getString("country"));
                    contact.setCity(rs.getString("city"));
                    contact.setMessage(rs.getString("message"));
 
                    return contact;
                }
            });
            return contact;
        } catch (Exception ex) {
            return null;
        }
    }

    
 @Override
    public Contact findById(Integer contact_id) {
        try {
            String query = "SELECT   contact_id"
                    + "                     ,f_name"
                    + "                     ,l_name"
                    + "                     ,email"
                    + "                     ,org_name"
                    + "                     ,country"
                    + "                     ,city"
                    + "                     ,message"                                  
                    + "   FROM     contacts"
                    + "   WHERE    org_id  = :org_id ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("contact_id",  contact_id);
            return (Contact) getNamedParameterJdbcTemplate().queryForObject(query, param, new RowMapper<Contact>() {

                public Contact mapRow(ResultSet rs, int rowNo) throws SQLException {
                    Contact contact = new Contact();
                     contact.setContactId(rs.getInt("contact_id"));
                    contact.setfName(rs.getString("f_name"));
                    contact.setlName(rs.getString("l_name"));
                    contact.setEmail(rs.getString("email"));
                    contact.setOrgName(rs.getString("org_name"));
                    contact.setCountry(rs.getString("country"));
                    contact.setCity(rs.getString("city"));
                    contact.setMessage(rs.getString("message"));
 
                    return contact;
                }
            });
        } catch (DataAccessException ex) {
            return null;
        }
    }
@Override
    public List<Contact> findByProperty(String property, Object value) {
        try {
           String query = "SELECT   contact_id"
                    + "                     ,f_name"
                    + "                     ,l_name"
                    + "                     ,email"
                    + "                     ,org_name"
                    + "                     ,country"
                    + "                     ,city"
                    + "                     ,message"                                  
                    + "   FROM     contacts"             
                    + "   WHERE      " + property + " =:value ";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("value", value);
            List<Contact> contact = getNamedParameterJdbcTemplate().query(query, param, new RowMapper<Contact>() {

                public Contact mapRow(ResultSet rs, int rowNo) throws SQLException {
                    Contact contact = new Contact();
                     contact.setContactId(rs.getInt("contact_id"));
                    contact.setfName(rs.getString("f_name"));
                    contact.setlName(rs.getString("l_name"));
                    contact.setEmail(rs.getString("email"));
                    contact.setOrgName(rs.getString("org_name"));
                    contact.setCountry(rs.getString("country"));
                    contact.setCity(rs.getString("city"));
                    contact.setMessage(rs.getString("message"));
 
                    return contact;
                }
            });
            return contact;
        } catch (DataAccessException ex) {
            return null;
        }
    }
}
