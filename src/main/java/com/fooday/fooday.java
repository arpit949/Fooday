package com.fooday;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;


@SpringBootApplication
public class fooday
{
		protected SpringApplicationBuilder configure(SpringApplicationBuilder application) 
		{
			return application.sources(fooday.class);
		}
		public static void main(String args[])
		{
			SpringApplication.run(fooday.class,args);
		}	
}
