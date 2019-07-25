package com.team.bnb;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
@ComponentScan(value = "com.team.bnb.services,com.team.bnb.controllers,com.team.bnb.security,com.team.bnb.model,com.bnb.team.repositories,com.team.bnb.validators")
public class BnbApplication {

	public static void main(String[] args) {
		SpringApplication.run(BnbApplication.class, args);
	}
        
}
