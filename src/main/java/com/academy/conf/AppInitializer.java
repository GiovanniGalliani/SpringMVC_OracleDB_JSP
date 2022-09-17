package com.academy.conf;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class AppInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		System.out.println("Applicazione inizializzata "+servletContext.getServerInfo());
		
		AnnotationConfigWebApplicationContext aC = 
				new AnnotationConfigWebApplicationContext();
		
		aC.register(AppConfig.class);
		aC.setServletContext(servletContext);
		
		DispatcherServlet dS = new DispatcherServlet(aC);
		ServletRegistration.Dynamic servlet = servletContext.addServlet("spring-servlet", dS);
		
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);
	}
}
