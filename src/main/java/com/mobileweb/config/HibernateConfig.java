package com.mobileweb.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mobileweb.model.User;
<<<<<<< HEAD
import com.mobileweb.registration.model.Registration;
//import com.mobileweb.registration.dto.RegistrationDTO;
=======
import com.mobileweb.registration.model.RegistrationDTO;
>>>>>>> a7efd82aa23608aed379d50c8e2f5046580da7bd

@Configuration
@EnableTransactionManagement
@ComponentScans(value = { @ComponentScan("com.mobileweb")})
public class HibernateConfig {

	@Autowired
	private ApplicationContext context;

	@Bean
	public LocalSessionFactoryBean getSessionFactory() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
		factoryBean.setConfigLocation(context.getResource("classpath:hibernate.cfg.xml"));
		
		factoryBean.setAnnotatedClasses(User.class);
<<<<<<< HEAD
		//factoryBean.setAnnotatedClasses(Registration.class);
		
=======
	//	factoryBean.setAnnotatedClasses(RegistrationDTO.class);
>>>>>>> a7efd82aa23608aed379d50c8e2f5046580da7bd
		return factoryBean;
	}

	@Bean
	public HibernateTransactionManager getTransactionManager() {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(getSessionFactory().getObject());
		return transactionManager;
	}

}
