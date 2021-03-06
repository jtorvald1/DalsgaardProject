
package JavaBean;

import Model.Webshop.CustomerOrder;
import java.util.Collection;

public class UserBean {
    
    private Long userId;
        
    private String firstName;
    
    private String lastName;
    
    private String userName;
    
    private String email;
    
    private String address;
    
    private String password;
    
    private boolean isPayingMember;

    private Collection<CustomerOrder> orders;
    
    public UserBean() {
    }

    public UserBean(Long userId, String firstName, String lastName, String userName, String email, String address, String password, boolean isPayingMember, Collection orders) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.email = email;
        this.address = address;
        this.password = password;
        this.orders = orders;
        this.isPayingMember = isPayingMember;
        
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setlastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getAddress(){
        return address;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword (String password){
        this.password = password;
    }
    
    public boolean getIsPayingMember(){
        return isPayingMember;
    }
    
    public void setIsPayingMember(boolean isPayingMember){
            this.isPayingMember = isPayingMember;
    }
    
    public Collection getOrders(){
        return orders;
    }
    
    public void setOrders(Collection<CustomerOrder> orders) {
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "UserBean{" + "userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName + ", email=" + email + ", address=" + address + ", password=" + password + ", is a paying member=" + isPayingMember + ", orders=" + orders + '}';
    }

}
