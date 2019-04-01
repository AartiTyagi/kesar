package com.kesar.daos;

import com.kesar.models.Login;

public interface LoginDao {
	public Login validate(String loginId,String pass);

}
