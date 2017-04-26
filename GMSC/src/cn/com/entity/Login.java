package cn.com.entity;

public class Login {
	
	private String login_id;
	
	private String login_name;
	
	private String login_pwd;
	
	

	public Login(String login_id, String login_name, String login_pwd) {
		super();
		this.login_id = login_id;
		this.login_name = login_name;
		this.login_pwd = login_pwd;
	}

	public String getLogin_id() {
		return login_id;
	}

	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}

	public String getLogin_name() {
		return login_name;
	}

	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}

	public String getLogin_pwd() {
		return login_pwd;
	}

	public void setLogin_pwd(String login_pwd) {
		this.login_pwd = login_pwd;
	}
	
	

}
