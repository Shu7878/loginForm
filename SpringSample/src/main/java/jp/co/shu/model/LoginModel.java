package jp.co.shu.model;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginModel implements Serializable {

	@NotEmpty(message="ユーザーIDは必須です")
	private String userId;

	@NotEmpty(message="パスワードは必須入力です")
	private String password;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}




}
