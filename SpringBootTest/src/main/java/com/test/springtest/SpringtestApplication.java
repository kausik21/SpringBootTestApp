package com.test.springtest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

@SpringBootApplication
public class SpringtestApplication {

	public static void main(String[] args) throws IOException {
		SpringApplication.run(SpringtestApplication.class, args);
		openHomePage();
	}

	private static void openHomePage() throws IOException {
//		try {
//			URI homepage = new URI("http://localhost:8081/");
//			Desktop.getDesktop().browse(homepage);
//		} catch (URISyntaxException | IOException e) {
//			e.printStackTrace();
//		}
		Runtime rt = Runtime.getRuntime();
		rt.exec("rundll32 url.dll,FileProtocolHandler " + "http://localhost:8081");
	}

}
