package peace.dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;
import org.springframework.dao.DataAccessException;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import peace.model.User;

public class UserDAOImpl extends NamedParameterJdbcDaoSupport implements UserDAO {

    NamedParameterJdbcTemplate template;

    public NamedParameterJdbcTemplate getTemplate() {
        return template;
    }

    public void setTemplate(NamedParameterJdbcTemplate template) {
        this.template = template;
    }

    @Override
    public void insertAtSignUp(User user) throws Exception {

        try {
            String q = "insert into user (f_name, l_name, email, phone_number, password, created_date, modified_date, activation_link, is_active, is_card_generated)"
                    + "values(:f_name, :l_name, :email, :phone_number, :password, :created_date, :modified_date, :activation_link, :is_active, :is_card_generated)";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("f_name", user.getfName());
            param.addValue("l_name", user.getlName());
            param.addValue("email", user.getEmail());
            param.addValue("phone_number", user.getPhoneNumber());
            param.addValue("password", user.getPassword());
            param.addValue("created_date", Date.valueOf(user.getCreatedDate()));
            param.addValue("modified_date", Date.valueOf(user.getModifiedDate()));
            param.addValue("activation_link", user.getActivationLink());
            param.addValue("is_active", user.isActive());
            param.addValue("is_card_generated", user.isCardGenerated());

            template.execute(q, param, new PreparedStatementCallback() {
                @Override
                public Object doInPreparedStatement(PreparedStatement ps)
                        throws SQLException, DataAccessException {
                    return ps.executeUpdate();
                }
            });
            
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new Exception();
        }

    }
    
    public User getUserByEmail(String email){
         try {
            String q = "select * from user where email=:email";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("email", email);
            List<User> users = getNamedParameterJdbcTemplate().query(q, param, new RowMapper<User>() {

                public User mapRow(ResultSet rs, int rowNo) throws SQLException {
                    User user = new User();
                    user.setfName(rs.getString("f_name"));
                    user.setlName(rs.getString("l_name"));
                    user.setPhoneNumber(rs.getString("phone_number"));
                    user.setAddress(rs.getString("address"));
                    user.setCity(rs.getString("city"));
                    user.setDob(rs.getDate("dob") != null ? rs.getDate("dob").toString() : null);
                    user.setReg_id(rs.getString("reg_id"));
                    return user;
                }
            });
            return users.get(0);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    @Override
    public User getUserForLogin(String email, String password) {
        try {
            String q = "select * from user where email=:email and password=:password";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("email", email);
            param.addValue("password", password);
            List<User> users = getNamedParameterJdbcTemplate().query(q, param, new RowMapper<User>() {

                public User mapRow(ResultSet rs, int rowNo) throws SQLException {
                    User user = new User();
                    user.setfName(rs.getString("f_name"));
                    user.setlName(rs.getString("l_name"));
                    user.setEmail(rs.getString("email"));
                    user.setPhoneNumber(rs.getString("phone_number"));
                    user.setActive(rs.getBoolean("is_active"));
                    user.setMemberLevel(rs.getInt("member_level"));
                    return user;
                }
            });
            return users.get(0);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    @Override
    public void updateUserAfterActivation(User user) {
        try {
            String q = "update user set modified_date=:modified_date,is_active=:is_active where activation_link = :activation_link";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("modified_date", Date.valueOf(user.getModifiedDate()));
            param.addValue("is_active", user.isActive());
            param.addValue("activation_link", user.getActivationLink());

            template.update(q, param);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public User getUserByLink(String link) {

        try {
            String q = "select * from user where activation_link = :activation_link";
            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("activation_link", link);
            List<User> user = getNamedParameterJdbcTemplate().query(q, param, new RowMapper<User>() {

                public User mapRow(ResultSet rs, int rowNo) throws SQLException {
                    User user = new User();
                    user.setfName(rs.getString("f_name"));
                    user.setActivationLink(rs.getString("activation_link"));
                    return user;
                }
            });
            return user.get(0);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }


    @Override
    public void updateParticipation(User user) throws Exception {
         try {
            String q = "update user set modified_date=:modified_date, address=:address, city=:city, state=:state, country=:country, qualification=:qualification, subject=:subject, occupation=:occupation, gender=:gender, dob=:dob, reg_id=:reg_id, category=:category, member_level = :member_level where email = :email";
            LocalDate dateOfBirth;
            DateTimeFormatter formatter;
            try{       
                formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                
                dateOfBirth = LocalDate.parse(user.getDob(), formatter);
            }catch(DateTimeParseException e){
                String date = user.getDob();
                String [] dateMonthYear = date.split("/");
                String day = dateMonthYear[0];
                String month = dateMonthYear[1];
                String year = dateMonthYear[2];
                
                if(day.length() < 2)
                    day = "0" + day;
                if(month.length() < 2)
                    month = "0" + month;
                
                formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                dateOfBirth = LocalDate.parse(day + "/" + month + "/" + year, formatter);
            }

            MapSqlParameterSource param = new MapSqlParameterSource();
            param.addValue("modified_date", Date.valueOf(user.getModifiedDate()));
            param.addValue("address", user.getAddress());
            param.addValue("city", user.getCity());
            param.addValue("state", user.getState());
            param.addValue("country", user.getCountry());
            param.addValue("qualification", user.getQualification());
            param.addValue("subject", user.getSubject());
            param.addValue("occupation", user.getOccupation());
            param.addValue("gender", user.getGender());
            param.addValue("dob", Date.valueOf(dateOfBirth));
            param.addValue("category", user.getCategory());
            param.addValue("reg_id", user.getReg_id());
            param.addValue("member_level", "2");
            param.addValue("email", user.getEmail());

          template.update(q, param);
            
        } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        }
    }
}