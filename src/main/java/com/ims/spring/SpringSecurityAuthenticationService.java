package com.ims.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;

public class SpringSecurityAuthenticationService {
	AuthenticationManager authenticationManager;
	
	@Autowired
	public void setAuthenticationManager(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
    }
}
