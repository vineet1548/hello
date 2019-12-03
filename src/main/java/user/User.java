package user;

public class User {
	
	private int id;
	private String name,number,email,password;
	private Short active;
	private String role;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getnumber() {
		return number;
	}
	public void setnumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Short getActive() {
		return active;
	}
	public void setActive(Short active) {
		this.active = active;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
		
	}
	public User(int id, String name, String number, String email, String password, Short active, String role) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.email = email;
		this.password = password;
		this.active = active;
		this.role = role;
	}
	
	
	public User(int id, String name, String number, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.email = email;
		this.password = password;
	}
	public User(String name, String number, String email, String password, Short active, String role) {
		super();
		this.name = name;
		this.number = number;
		this.email = email;
		this.password = password;
		this.active = active;
		this.role = role;
	}
	public User(int id, String email, String password, Short active) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.active = active;
	}
	
	
	
	public User(String name, String number, String email, String password) {
		super();
		this.name = name;
		this.number = number;
		this.email = email;
		this.password = password;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", number=" + number + ", email=" + email + ", password=" + password
				+ ", active=" + active + ", role=" + role + "]";
	}
	
	
	

}
