package net.yukitteru.resume.configuration;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;


/**
 * @author Yukitteru
 */
@Configuration
@ComponentScan({ "net.yukitteru.resume.service.impl",
				 "net.yukitteru.resume.controller",
				 "net.yukitteru.resume.filter",
				 "net.yukitteru.resume.listener"})

public class ServiceConfig {

	@Bean
	public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() throws IOException {
		PropertySourcesPlaceholderConfigurer conf = new PropertySourcesPlaceholderConfigurer();
		conf.setLocations(getResources());
		return conf;
	}
	
	private static Resource[] getResources(){
		return new Resource[] {new ClassPathResource("application.properties"),
							   new ClassPathResource("logic.properties")};
	}
}
