/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package peace.utility;

/**
 *
 * @author Suraj
 */
public class LabelValueBean {
    private Integer id;
    private String value;

    public LabelValueBean() {
    }

    public LabelValueBean(Integer id, String value) {
        this.id = id;
        this.value = value;
    }

    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
    

}