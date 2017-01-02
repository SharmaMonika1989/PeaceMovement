package peace.dao;


import java.util.List;
import peace.domain.Contact;

/**
 *
 * @author mitpl
 */
public interface ContactDAO {

    public abstract void save(Contact contact);

    public abstract void delete(Contact contact);

    public abstract void delete(Integer id);

    public abstract List<Contact> findAll();

    public abstract Contact findById(Integer id);

    public abstract List<Contact> findByProperty(String property, Object value);

}
