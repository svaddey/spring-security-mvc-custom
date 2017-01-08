package com.ims.spring;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({ "classpath:webSecurityConfig.xml", "/WEB-INF/mvc-servlet.xml" })
public class SecSecurityConfig {

    public SecSecurityConfig() {
        super();
    }

}
