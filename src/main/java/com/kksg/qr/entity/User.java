package com.kksg.qr.entity;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class User {

	private String firstName;
	private String lastName;
	private String email;
	private String city;
	private String mobile;
	
}

