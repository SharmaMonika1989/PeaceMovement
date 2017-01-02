
package peace.domain;

public class Contact implements java.io.Serializable {

    private Integer contactId;
    private String fName;
    private String lName;
    private String email;
    private String orgName;
    private String country;
    private String city;
    private String message;

    public Contact() {
    }

    public Contact(Integer contactId, String fName, String lName, String email, String orgName, String country, String city, String message) {
        this.contactId = contactId;
        this.fName = fName;
        this.lName = lName;
        this.email = email;
        this.orgName = orgName;
        this.country = country;
        this.city = city;
        this.message = message;
    }

    public Integer getContactId() {
        return contactId;
    }

    public void setContactId(Integer contactId) {
        this.contactId = contactId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
