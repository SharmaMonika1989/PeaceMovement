/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.dao;

import peace.domain.Category;

import java.util.List;

public interface CategoryDAO {
  public abstract void save(Category category);

    public abstract void delete(Category category);

    public abstract void delete(Integer id);

    public abstract void update(Category category);

    public abstract List<Category> findAll(); 

    public abstract Category findById(Integer id);
    
     public abstract List<Category> findByProperty(String property, Object value);   


}
